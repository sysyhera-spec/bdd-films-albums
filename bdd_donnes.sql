INSERT INTO PAYS VALUES               
	('UK', 'Angleterre'),
    ('AU', 'Autriche'),
    ('DE', 'Allemagne'),
    ('CA', 'Canada'),
    ('US', 'Etats-Unis'),
    ('FR', 'France'),
    ('IT', 'Italie'),
	('PL', 'Pologne');

INSERT INTO ARTISTE VALUES
	(1, 'Tarantino', 'US', '1963-03-27', 'R'),
	(2, 'Pitt', 'US', NULL, 'A'),
	(5, 'Bowie', 'UK', NULL, 'M'),
	(7, 'Nolan', 'UK', '1970-07-30', 'R'),
	(8, 'Smith', 'US', '1968-08-25', 'A'),
	(9, 'Mozart', 'AU', '1756-01-27', 'M'),
	(10, 'Beethoven', 'DE', NULL, 'M'),
	(11, 'Jackson', 'US', '1958-08-29', 'M'),
	(12, 'Cameron', 'CA', '1954-08-16', 'R'),
	(14, 'Prince', 'US', '1958-06-07', 'M'),
	(15, 'Scott', 'UK', '1937-11-30', 'R');

INSERT INTO FILM VALUES
	(10, 'Pulp Fiction', 1994, 'Crime', 1, 'US'),
	(11, 'Inglourious Basterds', 2009, NULL, 1, 'FR'),
	(12, 'Le Samourai', 1967, 'Policier', NULL, NULL),
	(13, 'Inception', 2010, 'SF', 7, 'US'),
	(15, 'The Pianist', 2002, 'Drama', NULL, 'PL'),
	(16, 'Titanic', 1997, 'Romance', 12, 'US'),
	(17, 'Gladiator', 2000, 'Epique', 15, 'US');

INSERT INTO ALBUM VALUES
	(100, 'Heroes', 1977, 'Rock', 5, NULL),
	(103, 'Thriller', 1982, 'Pop', 11, 'Epic'),
	(104, 'Requiem', 1791, 'Classique', 9, NULL),
	(105, 'Purple Rain', 1984, 'Pop', 14, 'WB'),
	(106, 'Moonlight Sonata', 1801, 'Classique', 10, NULL),
	(107, 'Blackstar', 2016, 'Rock', 5, 'Columbia'),
	(108, 'Bad', 1987, 'Pop', 11, 'Epic');


INSERT INTO UTILISATEUR VALUES
	(1000, 'Valerie Dupont', 24, 'FR'),
	(1002, 'Paul', 38, 'FR'),
	(1003, 'Mona', 17, 'UK'),
	(1004, 'Carine', 27, 'FR'),
	(1005, 'John', 31, 'CA'),
	(1006, 'Angela', 21, 'DE'),
	(1007, 'Dean', 35, 'US'),
	(1008, 'Sam', 32, 'US');

INSERT INTO AVIS_FILM VALUES
	(202, 1002, 10, 8, 'Génial', '2023-06-21'),
	(204, 1003, 13, 5, 'Très bon film', '2023-07-11'),
	(205, 1002, 16, 7, 'Iconique', '2023-10-28'),
	(206, 1006, 13, 6, 'Gut', '2023-11-05'),
	(207, 1008, 15, 4, '', '2024-03-19'),
	(208, 1008, 12, 8, 'Great', '2024-06-17');

INSERT INTO AVIS_ALBUM VALUES               
	(203, 1000, 100, 2, '', '2022-02-21'),
	(205, 1002, 103, 10, NULL, '2022-03-02'),
	(206, 1002, 108, 9, NULL, '2022-03-02'),
	(207, 1004, 107, 7, 'Du bon son', '2023-04-12'),
	(208, 1007, 104, 10, 'The best', '2023-08-30');

INSERT INTO PARTICIPE_FILM VALUES
	(2, 10, 'Acteur'),
	(2, 11, 'Acteur'),
	(1, 10, 'Scénariste');

INSERT INTO HISTORIQUE_PROPOSITION_FILM VALUES
	(1002, 12, '2023-06-21'),
	(1002, 15, '2023-10-28'),
	(1003, 11, '2023-07-11'),
	(1006, 11, '2023-11-05'),
	(1008, 15, '2024-03-19'),
	(1008, 10, '2023-11-05');

INSERT INTO HISTORIQUE_PROPOSITION_ALBUM VALUES
	(1000, 105, '2022-02-21'),
	(1002, 105, '2026-01-05'),
	(1004, 100, '2023-04-12'),
	(1007, 106, '2023-08-30');