CREATE TABLE IF NOT EXISTS social_links (
    id INTEGER PRIMARY KEY,
    url TEXT,
    name TEXT,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id)
);