-- Optional: Create a sample table
CREATE TABLE IF NOT EXISTS people (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

INSERT INTO people (name, age) VALUES
('Alice', 30),
('Bob', 25),
('Charlie', 35);
