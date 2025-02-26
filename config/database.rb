# rubocop:disable all

require 'sqlite3'

DB = SQLite3::Database.new('../linktree.db')
DB.results_as_hash = true

# schema = File.read('schema.sql')

DB.execute <<-SQL
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    active INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    deleted_at DATETIME DEFAULT NULL
);
SQL

DB.execute <<-SQL
CREATE TABLE IF NOT EXISTS social_links (
    id INTEGER PRIMARY KEY,
    url TEXT,
    name TEXT,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
SQL
