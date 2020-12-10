DROP DATABASE IF EXISTS MovieCatalogue;

CREATE DATABASE MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE Genre
(
	GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(30) NOT NULL
);

CREATE TABLE Director
(
	DirectorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL
);

CREATE TABLE Rating
(
	RatingID INT PRIMARY KEY AUTO_INCREMENT,
    RatingName VARCHAR(5) NOT NULL
);

CREATE TABLE Actor
(
	ActorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL
);

CREATE TABLE Movie
(
	MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(128) NOT NULL,
    ReleaseDate DATE NULL,
    GenreID INT NOT NULL,
    DirectorID INT NOT NULL,
    RatingID INT NULL
);

ALTER TABLE Movie
	ADD CONSTRAINT fk_MovieGenre FOREIGN KEY (GenreID) REFERENCES Genre
    (GenreID) ON DELETE NO ACTION;
ALTER TABLE Movie
	ADD CONSTRAINT fk_MovieDirector FOREIGN KEY (DirectorID) REFERENCES Director
	(DirectorID) ON DELETE NO ACTION;
ALTER TABLE Movie
	ADD CONSTRAINT fk_MovieRating FOREIGN KEY (RatingID) REFERENCES Rating
	(RatingID) ON DELETE NO ACTION;

CREATE TABLE CastMember
(
	CastMemberID INT PRIMARY KEY AUTO_INCREMENT,
    Role VARCHAR(50) NOT NULL,
    ActorID INT NOT NULL,
    MovieID INT NOT NULL
);

ALTER TABLE CastMember
	ADD CONSTRAINT fkCastMemberActor FOREIGN KEY (ActorID) REFERENCES Actor
	(ActorID) ON DELETE NO ACTION;
    
ALTER TABLE CastMember
	ADD CONSTRAINT fkCastMemberMovie FOREIGN KEY (MovieID) REFERENCES Movie
	(MovieID) ON DELETE NO ACTION;