const keyword : {FirstNormalForm: string, SecondNormalForm: string, ThirdNormalForm:string, BoyceCoddNormalForm?:string} = {
    FirstNormalForm: "No duplicate rows",
    SecondNormalForm: "Avoid partial dependencies",
    ThirdNormalForm: "Avoid transitive dependencies",
}

const FirstNormalForm : string[] = [
    "contain only one value",
    "Every record (row) must be unique - that means no duplicate row",
    "The order of the rows and columns should not be relevant",
    "focuses on making values simple and atomic."
];

const superkayAndCandidatekayDifference : string[] = [
    "Super key can contains columns that doesn't uniquely identify a row but together make a row unique (like name and id, names aren't unique but together with id(which is unique) will identify a row",
    "Candidate key can't contains any column that doesn't identify the row uniquely (line id and email, which alone all 2 also uniquely identify a row, but we can't combine with name because it isn't unique to identify a row and that will make a superkey instead of a candidate key)"
];
const SecondNormalForm : string[] = [
    ...FirstNormalForm,
    ...superkayAndCandidatekayDifference,
    "Understanding 2NF requires familiarity with two key concepts: superkeys and candidate keys. A superkey is any set of attributes that uniquely identifies each row in a table, meaning no two rows can have identical values across all columns in the superkey.",
    "Any set of attributes that, together, identify each row can be a superkey",
    `The Second Normal Form (2NF) is based on addressing partial dependencies.
    A partial dependency occurs in a table when an attribute that is not part
    of the primary key only depends on part of a composite primary key
    (a composite key is a primary key made of multiple columns).
    This can lead to data redundancy and update anomalies.`

];

const ThirdNormalForm : string[] = [
    ...SecondNormalForm,
    "Ensure no transitive dependency",
    `Have all non-key attributes depend directly on the primary key,
    meaning no non-key attribute should depend on another non-key attribute.`,
];
const cl = (log:any) => console.log(log);

cl("Normal form keywords: ")
cl(keyword)
cl(`First normal form: `)
cl(FirstNormalForm);
cl(`Second normal form: `)
cl(SecondNormalForm);
cl(`Third normal form: `)
cl(ThirdNormalForm);
