-- Create and select database
CREATE DATABASE IF NOT EXISTS init_script;
USE init_script;

-- Drop existing table if it exists
DROP TABLE IF EXISTS kubedb_table;

-- Create table (single-node)
CREATE TABLE kubedb_table
(
    id UInt64,
    name String
)
    ENGINE = MergeTree()
ORDER BY id;

-- Insert sample data
INSERT INTO kubedb_table (id, name) VALUES
(1, 'name1'),
(2, 'name2'),
(3, 'name3');

-- Verify inserted data
SELECT * FROM kubedb_table;
