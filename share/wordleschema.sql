-- $ sqlite3 ./var/wordleGame.db < ./share/wordleschema.sql


PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

DROP TABLE IF EXISTS User;
CREATE TABLE User(user_id INTEGER PRIMARY KEY, username VARCHAR, password VARCHAR);

DROP TABLE IF EXISTS Game;
CREATE TABLE Game(game_id INTEGER PRIMARY KEY, user_id INTEGER, secretword text, guess_num INTEGER);

DROP TABLE IF EXISTS In_Progress;
CREATE TABLE In_Progress(user_id INTEGER, game_id INTEGER);

DROP TABLE IF EXISTS Completed;
CREATE TABLE Completed(user_id INTEGER, game_id INTEGER, guess_num INTEGER); 

DROP TABLE IF EXISTS Guesses;
CREATE TABLE Guesses(game_id INTEGER, guess_num INTEGER, guess_word VARCHAR);

DROP TABLE IF EXISTS Correct_Words;
CREATE TABLE Correct_Words(correct_word_id INTEGER PRIMARY KEY, correct_word VARCHAR);

DROP TABLE IF EXISTS Valid_Words;
CREATE TABLE Valid_Words(valid_word_id INTEGER PRIMARY KEY, valid_word VARCHAR);

INSERT INTO User(username, password) VALUES ("Arati", "pass123");
INSERT INTO User(username, password) VALUES ("Ayush", "pass456");
INSERT INTO User(username, password) VALUES ("Dillon", "pass789");

COMMIT;



