DROP TABLE IF EXISTS authors CASCADE;


CREATE TABLE "authors" (
    "AUTHOR_ID" INT   NOT NULL,
    "AUTHOR" VARCHAR NOT NULL,
	--FOREIGN KEY (AUTHOR) REFERENCES IMDB_Reviews (AUTHOR)
	CONSTRAINT "pk_authors" PRIMARY KEY  ("AUTHOR_ID") );

SELECT * FROM authors;


DROP TABLE IF EXISTS imdbreviews CASCADE;

CREATE TABLE "imdbreviews" (
    "AUTHOR" VARCHAR   NOT NULL,
    "TITLE" VARCHAR   NOT NULL,
    "REVIEW" VARCHAR   NOT NULL,
    "RATING" VARCHAR   NOT NULL,
    "AUTHOR_ID" INT NOT NULL,
	FOREIGN KEY ("AUTHOR_ID") REFERENCES authors("AUTHOR_ID"),
	CONSTRAINT "pk_imdbreviews" PRIMARY KEY ("AUTHOR_ID")
);

SELECT * FROM imdbreviews;

ALTER TABLE "authors" ADD CONSTRAINT "fk_authors_AUTHOR_ID_AUTHOR" FOREIGN KEY("AUTHOR_ID", "AUTHOR")
REFERENCES "IMDB_Reviews" ("AUTHOR_ID", "AUTHOR");