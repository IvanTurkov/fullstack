DROP TABLE IF EXISTS userpg CASCADE;

CREATE TABLE userpg (
    id serial primary key,
    username VARCHAR(20) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL
);

INSERT INTO userpg (username, password) VALUES ('test1', 'pass1');
INSERT INTO userpg (username, password) VALUES ('test2', 'pass2');
INSERT INTO userpg (username, password) VALUES ('test3', 'pass3');

