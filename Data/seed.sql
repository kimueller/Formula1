USE FormulaOne;

DELETE FROM RaceYears;
DELETE FROM Races;
DELETE FROM Teams;
DELETE FROM Rankings;
DELETE FROM Drivers;

SET IDENTITY_INSERT Teams ON;

INSERT INTO Teams(TeamID, TeamName) VALUES (1, 'Red Bull');
INSERT INTO Teams(TeamID, TeamName) VALUES (2, 'Aston Martin');
INSERT INTO Teams(TeamID, TeamName) VALUES (3, 'McLaren');
INSERT INTO Teams(TeamID, TeamName) VALUES (4, 'Alfa Romeo');
INSERT INTO Teams(TeamID, TeamName) VALUES (5, 'Mercedes');
INSERT INTO Teams(TeamID, TeamName) VALUES (6, 'AlphaTauri');
INSERT INTO Teams(TeamID, TeamName) VALUES (7, 'Haas');
INSERT INTO Teams(TeamID, TeamName) VALUES (8, 'Williams');
INSERT INTO Teams(TeamID, TeamName) VALUES (9, 'Alpine');
INSERT INTO Teams(TeamID, TeamName) VALUES (10, 'Ferrari');

SET IDENTITY_INSERT Teams OFF;

SET IDENTITY_INSERT Races ON;

INSERT INTO Races(RaceID, TrackName) VALUES (1, 'Bahrain');
INSERT INTO Races(RaceID, TrackName) VALUES (2, 'Saudi Arabia');
INSERT INTO Races(RaceID, TrackName) VALUES (3, 'Australia');

SET IDENTITY_INSERT Races OFF;

SET IDENTITY_INSERT Rankings ON;

INSERT INTO Rankings(RankingPlace, Points) VALUES (1, 25);
INSERT INTO Rankings(RankingPlace, Points) VALUES (2, 18);
INSERT INTO Rankings(RankingPlace, Points) VALUES (3, 15);
INSERT INTO Rankings(RankingPlace, Points) VALUES (4, 12);
INSERT INTO Rankings(RankingPlace, Points) VALUES (5, 10);
INSERT INTO Rankings(RankingPlace, Points) VALUES (6, 8);
INSERT INTO Rankings(RankingPlace, Points) VALUES (7, 6);
INSERT INTO Rankings(RankingPlace, Points) VALUES (8, 4);
INSERT INTO Rankings(RankingPlace, Points) VALUES (9, 2);
INSERT INTO Rankings(RankingPlace, Points) VALUES (10, 1);
INSERT INTO Rankings(RankingPlace, Points) VALUES (11, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (12, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (13, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (14, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (15, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (16, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (17, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (18, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (19, 0);
INSERT INTO Rankings(RankingPlace, Points) VALUES (20, 0);

SET IDENTITY_INSERT Rankings OFF;

SET IDENTITY_INSERT Drivers ON;

INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (1, 'Max', 'Verstappen', 1);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (2, 'Sergio', 'Perez', 1);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (3, 'Fernando', 'Alonoso', 2);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (4, 'Lance', 'Stroll', 2);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (5, 'Lando', 'Norris', 3);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (6, 'Oscar', 'Piastri', 3);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (7, 'Zhou', 'Guanyu', 4);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (8, 'Valtteri', 'Bottas', 4);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (9, 'Lewis', 'Hamiltion', 5);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (10, 'George', 'Russel', 5);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (11, 'Nick', 'de Vries', 6);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (12, 'Yuki', 'Tsunoda', 6);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (13, 'Kevin', 'Magnussen', 7);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (14, 'Nico', 'Hülkenberg', 7);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (15, 'Alexander', 'Albon', 8);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (16, 'Logan', 'Sargeant', 8);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (17, 'Pierre', 'Gasly', 9);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (18, 'Esteban', 'Ocon', 9);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (19, 'Charles', 'Leclerc', 10);
INSERT INTO Drivers(DriverID, FirstName, LastName, TeamID) VALUES (20, 'Carlos', 'Sainz Jr.', 10);

SET IDENTITY_INSERT Drivers OFF;

SET IDENTITY_INSERT RaceYears ON;

INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (1, 2020, 1, 1, 1);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (2, 2020, 2, 1, 2);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (3, 2020, 3, 1, 3);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (4, 2020, 4, 1, 5);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (5, 2020, 5, 1, 4);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (6, 2020, 6, 1, 10);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (7, 2020, 7, 1, 15);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (8, 2020, 8, 1, 16);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (9, 2020, 9, 1, 9);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (10, 2020, 10, 1, 8);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (11, 2020, 11, 1, 18);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (12, 2020, 12, 1, 12);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (13, 2020, 13, 1, 11);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (14, 2020, 14, 1, 14);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (15, 2020, 15, 1, 17);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (16, 2020, 16, 1, 20);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (17, 2020, 17, 1, 13);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (18, 2020, 18, 1, 6);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (19, 2020, 19, 1, 19);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (20, 2020, 20, 1, 7);

INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (21, 2021, 1, 2, 3);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (22, 2021, 2, 2, 5);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (23, 2021, 3, 2, 1);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (24, 2021, 4, 2, 4);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (25, 2021, 5, 2, 2);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (26, 2021, 6, 2, 15);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (27,2021, 7, 2, 9);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (28,2021, 8, 2, 12);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (29, 2021, 9, 2, 10);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (30, 2021, 10, 2, 7);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (31, 2021, 11, 2, 16);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (32, 2021, 12, 2, 18);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (33, 2021, 13, 2, 14);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (34, 2021, 14, 2, 17);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (35, 2021, 15, 2, 11);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (36, 2021, 16, 2, 19);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (37, 2021, 17, 2, 13);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (38, 2021, 18, 2, 6);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (39, 2021, 19, 2, 20);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (40, 2021, 20, 2, 8);

INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (41, 2022, 1, 3, 3);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (42, 2022, 2, 3, 1);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (43, 2022, 3, 3, 2);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (44, 2022, 4, 3, 4);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (45, 2022, 5, 3, 5);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (46, 2022, 6, 3, 9);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (47, 2022, 7, 3, 12);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (48, 2022, 8, 3, 15);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (49, 2022, 9, 3, 18);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (50, 2022, 10, 3, 16);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (51, 2022, 11, 3, 7);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (52, 2022, 12, 3, 14);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (53, 2022, 13, 3, 10);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (54, 2022, 14, 3, 19);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (55, 2022, 15, 3, 13);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (56, 2022, 16, 3, 17);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (57, 2022, 17, 3, 11);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (58, 2022, 18, 3, 8);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (59, 2022, 19, 3, 20);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (60, 2022, 20, 3, 6);

INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (61, 2020, 1, 2, 7);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (62, 2020, 2, 2, 6);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (63, 2020, 3, 2, 19);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (64, 2020, 4, 2, 20);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (65, 2020, 5, 2, 12);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (66, 2020, 6, 2, 13);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (67, 2020, 7, 2, 14);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (68, 2020, 8, 2, 11);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (69, 2020, 9, 2, 17);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (70, 2020, 10, 2, 18);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (71, 2020, 11, 2, 8);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (72, 2020, 12, 2, 9);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (73, 2020, 13, 2, 16);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (74, 2020, 14, 2, 15);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (75, 2020, 15, 2, 10);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (76, 2020, 16, 2, 4);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (77, 2020, 17, 2, 5);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (78, 2020, 18, 2, 3);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (79, 2020, 19, 2, 2);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (80, 2020, 20, 2, 1);

INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (81, 2020, 1, 3, 1);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (82, 2020, 2, 3, 11);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (83, 2020, 3, 3, 7);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (84, 2020, 4, 3, 6);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (85, 2020, 5, 3, 2);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (86, 2020, 6, 3, 19);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (87, 2020, 7, 3, 20);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (88, 2020, 8, 3, 10);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (89, 2020, 9, 3, 12);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (90, 2020, 10, 3, 8);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (91, 2020, 11, 3, 9);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (92, 2020, 12, 3, 18);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (93, 2020, 13, 3, 13);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (94, 2020, 14, 3, 5);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (95, 2020, 15, 3, 4);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (96, 2020, 16, 3, 17);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (97, 2020, 17, 3, 3);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (98, 2020, 18, 3, 14);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (99, 2020, 19, 3, 15);
INSERT INTO RaceYears(RaceYearID, Year, DriverID, RaceID, RankingID) VALUES (100, 2020, 20, 3, 16);

SET IDENTITY_INSERT RaceYears OFF;
