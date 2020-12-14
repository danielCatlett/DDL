USE moviecatalogue;

INSERT INTO actor (ActorID, FirstName, LastName, BirthDate) VALUES
	(1, 'Bill', 'Murray', '1950-09-21'),
    (2, 'Dan', 'Aykroyd', '1952-07-01'),
    (3, 'John', 'Candy', '1950-10-31'),
    (4, 'Steve', 'Martin', NULL),
    (5, 'Sylvester', 'Stallone', NULL);
    
INSERT INTO director (DirectorID, FirstName, LastName, BirthDate) VALUES
	(1, 'Ivan', 'Reitman', '1946-10-27'),
    (2, 'Ted', 'Kotcheff', NULL);
    
INSERT INTO rating (RatingID, RatingName) VALUES
	(1, 'G'),
    (2, 'PG'),
    (3, 'PG-13'),
    (4, 'R');
    
INSERT INTO genre (GenreID, GenreName) VALUES
	(1, 'Action'),
    (2, 'Comedy'),
    (3, 'Drama'),
    (4, 'Horror');
    
INSERT INTO movie (MovieID, GenreID, DirectorID, RatingID, Title, ReleaseDate) VALUES
	(1, 1, 2, 4, 'Rambo: First Blood', '1982-10-22'),
    (2, 2, NULL, 4, 'Planes, Trains, & Automobiles', '1987-11-25'),
    (3, 2, 1, 2, 'Ghostbusters', NULL),
    (4, 2, NULL, 2, 'The Great Outdoors', '1988-06-17');
    
INSERT INTO castmember (CastMemberID, ActorID, MovieID, Role) VALUES
	(1, 5, 1, 'John Rambo'),
    (2, 4, 2, 'Neil Page'),
    (3, 3, 2, 'Del Griffith'),
    (4, 1, 3, 'Dr. Peter Venkman'),
    (5, 2, 3, 'Dr. Raymond Stanz'),
    (6, 2, 4, 'Roman Craig'),
    (7, 3, 4, 'Chet Ripley');
    
UPDATE movie SET Title = 'Ghostbusters (1984)' WHERE MovieID = 3;

UPDATE genre SET GenreName = 'Action/Adventure' WHERE GenreID = 1;

DELETE FROM castmember WHERE CastMemberID = 1;
DELETE FROM movie WHERE MovieID = 1;

ALTER TABLE actor ADD DateOfDeath date;
UPDATE actor SET DateOfDeath = '1994-4-3' WHERE ActorID = 3;