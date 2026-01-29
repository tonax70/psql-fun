// test.ts
import { createTestDb } from "./db";

const pool = createTestDb();

async function main() {
  // unsafe
  const unsafeName = "alice";
  await pool.query(
    `SELECT * FROM users WHERE username = '${unsafeName}'`
  );

  // safe prepared statement
  const username = "alice";

  const result = await pool.query(
    "SELECT id, username, email FROM users WHERE username = $1",
    [username]
  );

  console.log(result.rows);

  // prepared JOIN
  const minTotal = 50;

  const joinResult = await pool.query(
    `
    SELECT u.username, o.total
    FROM users u
    JOIN orders o ON u.id = o.user_id
    WHERE o.total > $1
    ORDER BY o.total DESC
    `,
    [minTotal]
  );

  console.table(joinResult.rows);

  await pool.end();
}

main();
