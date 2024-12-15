-- +goose Up
-- +goose StatementBegin
CREATE TABLE posts (
	   id INTEGER PRIMARY KEY AUTOINCREMENT,
	   title VARCHAR(255) NOT NULL,
	   content TEXT NOT NULL,
	   createdAt DATETIME NOT NULL
);

INSERT INTO posts (title, content, createdAt) 
VALUES ('First Post', 'This is the content of the first post.', '2024-12-14 10:00:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Second Post', 'Content for the second post goes here.', '2024-12-14 10:05:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Third Post', 'Here is what the third post has to say.', '2024-12-14 10:10:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Fourth Post', 'The fourth post includes some fascinating insights.', '2024-12-14 10:15:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Fifth Post', 'Fifth post content is all about keeping it interesting.', '2024-12-14 10:20:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Sixth Post', 'The sixth post brings even more engaging content.', '2024-12-14 10:25:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Seventh Post', 'Seventh post with valuable thoughts.', '2024-12-14 10:30:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Eighth Post', 'This eighth post discusses more in-depth topics.', '2024-12-14 10:35:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Ninth Post', 'Content for the ninth post keeps it fresh.', '2024-12-14 10:40:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Tenth Post', 'Finally, the tenth post wraps things up nicely.', '2024-12-14 10:45:00');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE posts;
-- +goose StatementEnd
