// db.ts
import { newDb, DataType } from "pg-mem";
import { Pool } from "pg";

export function createTestDb() {
  const mem = newDb({ autoCreateForeignKeyIndices: true });

  // Optional: enable common Postgres functions
  mem.public.registerFunction({
    name: "now",
    returns: DataType.timestamp,
    implementation: () => new Date(),
  });

  // Create schema
  mem.public.none(`
    CREATE TABLE users (
      id SERIAL PRIMARY KEY,
      username TEXT NOT NULL,
      email TEXT UNIQUE NOT NULL
    );

    CREATE TABLE orders (
      id SERIAL PRIMARY KEY,
      user_id INT REFERENCES users(id),
      total NUMERIC
    );
  `);

  // Seed data
  mem.public.none(`
    INSERT INTO users (username, email) VALUES
    ('alice', 'alice@mail.com'),
    ('bob', 'bob@mail.com');

    INSERT INTO orders (user_id, total) VALUES
    (1, 100.50),
    (1, 42.00),
    (2, 75.25);
  `);

  // THIS is the magic: pg-compatible adapter
  const adapter = mem.adapters.createPg();

  return new Pool(adapter);
}
