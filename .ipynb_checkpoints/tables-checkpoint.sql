DROP TABLE IF EXISTS authors;

CREATE TABLE authors 
( author_id INT NOT NULL,
  author_name VARCHAR(100),
  CONSTRAINT author_pk
  PRIMARY KEY (author_id)
);

SELECT * FROM authors;

DROP TABLE IF EXISTS IMDB_Reviews;

CREATE TABLE IMDB_Reviews (
    AUTHOR VARCHAR NOT NULL,
    TITLE VARCHAR,
  	REVIEW VARCHAR,
  	RATING VARCHAR,
	CONSTRAINT author_name
    FOREIGN KEY (AUTHOR) REFERENCES authors(author_name)
);

 
 
 