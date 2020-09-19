-- -----------------------------------------------------
-- Data for table `Marvel`.`alignement`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`alignement` (`idalignement`, `nom`) VALUES (1, 'Bon');
INSERT INTO `Marvel`.`alignement` (`idalignement`, `nom`) VALUES (2, 'Mauvais');
INSERT INTO `Marvel`.`alignement` (`idalignement`, `nom`) VALUES (3, 'Neutre');
INSERT INTO `Marvel`.`alignement` (`idalignement`, `nom`) VALUES (4, 'Versatile');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`univers`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`univers` (`idunivers`, `nom`) VALUES (1, 'DC');
INSERT INTO `Marvel`.`univers` (`idunivers`, `nom`) VALUES (2, 'Marvel');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`equipes`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (1, 'The Avengers');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (2, 'X-men');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (3, 'Les Quatre Fantastiques');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (4, 'Les gardiens de la galaxie');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (5, 'L’Ordre Noir');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (6, 'La Cabale');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (7, 'La Ligue des Justiciers');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (8, 'Confrérie des mauvais mutants');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (9, 'The Defenders');
INSERT INTO `Marvel`.`equipes` (`idequipe`, `nom`) VALUES (0, 'Travaille seul');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`race`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (1, 'Asgardiens', NULL, 'Asgard');
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (2, 'Kree', 'Peau bleue', 'Hala');
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (3, 'Humains', NULL, 'Terre');
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (4, 'Eternels', NULL, NULL);
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (5, 'Entité cosmique', NULL, NULL);
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (6, 'Robots', NULL, NULL);
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (7, 'Faltinien', NULL, NULL);
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (0, 'inconnue', NULL, NULL);
INSERT INTO `Marvel`.`race` (`idrace`, `nom`, `particularite`, `planete_principale`) VALUES (12, 'Skrull', 'Métamorphes', 'Skrullos');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`personnage`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (1, 'Thor', 'Le dieu du tonnerre', 'Eric Masterson', 1, 1, 'M', 100, 1, 1, 'https://fr.wikipedia.org/wiki/Thor_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (2, 'Hulk', 'Le Colosse de jade', 'Bruce Banner', 1, 1, 'M', 100, 1, 3, 'https://fr.wikipedia.org/wiki/Hulk');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (3, 'Black Widow', 'La veuve noire', 'Natasha Romanoff', 1, 1, 'F', 30, 1, 3, 'https://fr.wikipedia.org/wiki/Veuve_noire_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (4, 'Scarlet Witch', 'La Sorcière rouge', 'Wanda Maximoff', 1, 1, 'F', 80, 1, 3, 'https://fr.wikipedia.org/wiki/Sorci%C3%A8re_rouge');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (5, 'The Wasp', 'La Guêpe', 'Janet Van Dyne', 1, 1, 'F', 40, 1, 3, 'https://fr.wikipedia.org/wiki/Gu%C3%AApe_(Comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (6, 'Iron Man', 'Tête de fer', 'Tony Stark', 1, 1, 'M', 50, 1, 3, 'https://fr.wikipedia.org/wiki/Iron_Man_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (7, 'Captain America', 'Cap', 'Steve  Rogers', 1, 1, 'M', 40, 1, 3, 'https://fr.wikipedia.org/wiki/Captain_America');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (8, 'Wonder Woman', 'Diana Prince', 'Princesse Diana', 1, 2, 'F', 60, 7, 3, 'https://fr.wikipedia.org/wiki/Wonder_Woman');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (9, 'Professeur Xavier', 'Professeur X', 'Charles Xavier', 1, 1, 'M', 80, 2, 3, 'https://fr.wikipedia.org/wiki/Professeur_Xavier');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (10, 'Galactus', 'Le Dévoreur de Mondes', 'Galan', 3, 1, 'M', 500, 0, 5, 'https://fr.wikipedia.org/wiki/Galactus');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (11, 'Thanos', 'Le Titan fou', NULL, 2, 1, 'M', 200, 0, 4, 'https://fr.wikipedia.org/wiki/Thanos_(Marvel_Comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (12, 'Adam Warlock', 'Magus', NULL, 4, 1, 'M', 150, 0, 5, 'https://fr.wikipedia.org/wiki/Adam_Warlock');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (13, 'Docteur Fatalis', 'Doctor Doom', 'Victor Von Fatalis', 2, 1, 'M', 100, 0, 3, 'https://fr.wikipedia.org/wiki/Docteur_Fatalis');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (14, 'Captain Marvel', 'Vers', 'Carol Danvers', 1, 1, 'F', 150, 0, 3, 'https://fr.wikipedia.org/wiki/Carol_Danvers');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (15, 'Valkyrie', 'Val', 'Brunhilde', 1, 1, 'F', 90, 0, 1, 'https://fr.wikipedia.org/wiki/Valkyrie_(Marvel_Comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (16, 'Batman', 'La Chauves-souris', 'Bruce Wayne', 1, 2, 'M', 30, 7, 3, 'https://fr.wikipedia.org/wiki/Batman');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (17, 'Mr Fantastique', 'L\'Homme élastique', 'Red Richards', 1, 1, 'M', 40, 3, 3, 'https://fr.wikipedia.org/wiki/Rachel_Summers');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (18, 'Elektra', NULL, 'Elektra Natchios', 1, 1, 'F', 60, 0, 3, 'https://fr.wikipedia.org/wiki/Elektra_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (19, 'La Femme invisible', NULL, 'Jane Storm-Richards', 1, 1, 'F', 40, 3, 3, 'https://fr.wikipedia.org/wiki/Femme_invisible_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (20, 'Emma Frost', 'la Reine Blanche', 'Emma Grace Frost', 2, 1, 'F', 70, 0, 3, 'https://fr.wikipedia.org/wiki/Emma_Frost');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (21, 'Jean Grey', NULL, NULL, 1, 1, 'F', 100, 2, 3, 'https://fr.wikipedia.org/wiki/Jean_Grey');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (22, 'Psylocke', 'Lady Mandarin', 'Elisabeth Glorianna « Betsy » Braddock', 1, 1, 'F', 60, 0, 3, 'https://fr.wikipedia.org/wiki/Psylocke');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (23, 'La Vision', NULL, 'Victor Shade', 1, 1, 'M', 80, 0, 6, 'https://fr.wikipedia.org/wiki/Vision_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (24, 'Loki', 'Le dieu de la malice', 'Loki Laufeyson', 2, 1, 'M', 70, 0, 1, 'https://fr.wikipedia.org/wiki/Loki_(Marvel_Comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (25, 'Star-Lord', 'Boyo ', 'Peter Jason Quill', 1, 1, 'M', 40, 4, 3, 'https://fr.wikipedia.org/wiki/Star-Lord');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (26, 'Docteur Strange', 'le Sorcier suprême', 'Stephen Vincent Strange', 1, 1, 'M', 90, 0, 3, 'https://fr.wikipedia.org/wiki/Docteur_Strange');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (27, 'Cléa', 'Princesse de la Dimension noire', 'Cleook ', 1, 1, 'F', 60, 0, 7, 'https://fr.wikipedia.org/wiki/Cl%C3%A9a_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (28, 'Black Panther', 'The King of Wakanda', 'T\'Challa', 1, 1, 'M', 40, 1, 3, 'https://fr.wikipedia.org/wiki/Panth%C3%A8re_noire_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (29, 'Wolverine', 'L\'Arme X', 'Logan', 1, 1, 'M', 60, 2, 3, 'https://fr.wikipedia.org/wiki/Wolverine');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (30, 'Jessica Jones', 'Power Woman', 'Jessica Campbell Jones', 1, 1, 'F', 60, 9, 3, 'https://fr.wikipedia.org/wiki/Jessica_Jones');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (31, 'Le Fauve', 'Beast', 'Hank ', 1, 1, 'M', 60, 2, 3, 'https://fr.wikipedia.org/wiki/Fauve_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (32, 'Spider-Man', 'L\'araignée', 'Peter Benjamin Parker', 1, 1, 'M', 60, 1, 3, 'https://fr.wikipedia.org/wiki/Spider-Man');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (33, 'Luke Cage', 'Power Man', 'Carl Lucas', 1, 1, 'M', 50, 9, 3, 'https://fr.wikipedia.org/wiki/Luke_Cage');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (34, 'Drax', 'le Destructeur', 'Arthur Sampson Douglas', 1, 1, 'M', 50, 4, 0, 'https://fr.wikipedia.org/wiki/Drax_le_Destructeur');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (35, 'Groot', 'Le monstre de la planète X', NULL, 1, 1, 'M', 40, 4, 0, 'https://fr.wikipedia.org/wiki/Groot');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (36, 'Malicia', 'Irene Adler', 'Anna Marie', 1, 1, 'F', 100, 2, 3, 'https://fr.wikipedia.org/wiki/Malicia_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (37, 'La Chose', 'Benji', 'Benjamin « Ben » Jacob Grimm', 1, 1, 'M', 80, 3, 3, 'https://fr.wikipedia.org/wiki/Chose_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (38, 'Nova', 'Centurion Nova', 'Richard Rider', 1, 1, 'F', 90, 9, 3, 'https://fr.wikipedia.org/wiki/Nova_(Richard_Rider)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (39, 'Mystique', 'Raven ', 'Raven Darkhölme', 1, 1, 'F', 40, 0, 3, 'https://fr.wikipedia.org/wiki/Mystique_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (40, 'Baron Zémo', 'Le Phénix', 'Heinrich Zemo', 2, 1, 'M', 50, 0, 3, 'https://fr.wikipedia.org/wiki/Baron_Zemo');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (41, 'Le Mandarin', 'Gene Khan', NULL, 2, 1, 'M', 40, 0, 3, 'https://fr.wikipedia.org/wiki/Mandarin_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (42, 'Dormammu', 'Le Seigneur de la Dimension noire', NULL, 2, 1, 'M', 70, 0, 0, 'https://fr.wikipedia.org/wiki/Dormammu');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (43, 'Mephisto', 'Satan', ' Lucifer', 2, 1, 'M', 100, 0, 0, 'https://fr.wikipedia.org/wiki/Mephisto_(comics)v');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (44, 'Kang', 'Le Centurion rouge', 'Nathaniel Richards', 1, 1, 'M', 80, 0, 3, 'https://fr.wikipedia.org/wiki/Kang_le_conqu%C3%A9rant');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (45, 'Venom', 'Le Spider-Man noir', NULL, 2, 1, 'M', 50, 0, 0, 'https://fr.wikipedia.org/wiki/Venom_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (46, 'Docteur Octopus', 'Superior Spider-Man', 'Otto Gunther Octavius', 2, 1, 'M', 80, 0, 3, 'https://fr.wikipedia.org/wiki/Docteur_Octopus');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (47, 'Apocalypse', 'The First One', 'En Sabah Nur', 2, 1, 'M', 150, 0, 3, 'https://fr.wikipedia.org/wiki/Apocalypse_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (48, 'Ultron', NULL, NULL, 2, 1, 'M', 200, 0, 6, 'https://fr.wikipedia.org/wiki/Ultron');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (49, 'Crâne Rouge', 'The Red Skull', 'Johann Schmidt', 2, 1, 'M', 30, 0, 0, 'https://fr.wikipedia.org/wiki/Cr%C3%A2ne_rouge');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (50, 'Magneto', 'Erik Lehnsherr', 'Max Eisenhardt', 4, 1, 'M', 80, 2, 3, 'https://fr.wikipedia.org/wiki/Magn%C3%A9to_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (51, 'Tornade', 'Storm', 'Ororo Munroe', 4, 1, 'F', 50, 2, 3, 'https://fr.wikipedia.org/wiki/Tornade_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (52, 'Hawkeye', 'Œil-de-faucon', 'Clint Barton', 1, 1, 'M', 30, 1, 3, 'https://fr.wikipedia.org/wiki/Clint_Barton');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (53, 'Ant-Man', ' l\'Homme-fourmi', 'Scott Lang', 1, 1, 'M', 50, 1, 3, 'https://fr.wikipedia.org/wiki/Ant-Man');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (54, 'Daredevil', 'DD ', 'Matthew « Matt » Michael Murdock', 1, 2, 'M', 30, 9, 3, 'https://fr.wikipedia.org/wiki/Daredevil');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (55, 'Ghost Rider', 'Spirit of Vengeance', 'Johnny Blaze', 1, 1, 'M', 30, 9, 0, 'https://fr.wikipedia.org/wiki/Ghost_Rider_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (56, 'War Machine', ' Iron Patriot', 'Jim  Rhodes', 1, 1, 'M', 30, 1, 3, 'https://fr.wikipedia.org/wiki/War_Machine_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (57, 'James Barnes', 'Le Soldat de l’hiver', 'James Buchanan Barnes', 1, 1, 'M', 40, 0, 3, 'https://fr.wikipedia.org/wiki/James_Barnes');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (58, 'Le Faucon', NULL, 'Samuel Thomas Wilson', 1, 1, 'M', 40, 1, 3, 'https://fr.wikipedia.org/wiki/Faucon_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (59, 'Gamora', 'La femme la plus dangereuse de l\'univers', NULL, 1, 1, 'F', 70, 4, 0, 'https://fr.wikipedia.org/wiki/Gamora');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (60, 'Ronan', ' l\'Accusateur', NULL, 2, 1, 'M', 100, 0, 2, 'https://fr.wikipedia.org/wiki/Ronan_l%27Accusateur');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (61, 'Nébula', 'Commandant Nébula', NULL, 4, 1, 'F', 40, 0, 6, 'https://fr.wikipedia.org/wiki/N%C3%A9bula_(Marvel_Comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (62, 'Rocket', NULL, NULL, 1, 1, 'M', 40, 4, 6, 'https://fr.wikipedia.org/wiki/Rocket_Raccoon');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (63, 'Graviton', NULL, 'Franklin Hall', 2, 1, 'M', 100, 0, 3, 'https://fr.wikipedia.org/wiki/Graviton_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (64, 'Mister Hyde', NULL, 'Calvin Zabo', 2, 1, 'M', 80, 0, 3, 'https://fr.wikipedia.org/wiki/Mister_Hyde_(comics)');
INSERT INTO `Marvel`.`personnage` (`idpersonnage`, `nom`, `surnom`, `nom_civil`, `idalignement`, `idunivers`, `sexe`, `puissance`, `idequipe`, `idrace`, `lien`) VALUES (65, 'Amadeus Cho', 'Mastermind Excello', NULL, 1, 1, 'M', 70, 0, 3, 'https://fr.wikipedia.org/wiki/Amadeus_Cho');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`pouvoirs`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (1, 'Vieillissement ralenti');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (2, 'système immunitaire renforcé');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (3, 'Maitrise des arts martiaux');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (4, 'Force surhumaine');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (5, 'Cicatrisation (régénération)');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (6, 'Bonds dans les airs');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (7, 'Résistance surhumaine');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (8, 'Contrôle de la foudre');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (9, 'projection astrale');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (10, 'Vol');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (11, 'Rapidité surhumaines');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (12, 'Résistance à la magie');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (13, 'Résistance au contrôle mental');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (14, 'Télépathie animale');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (15, 'Génie intelectuel');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (16, 'Télépathie');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (17, 'Psioniques');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (18, 'Pouvoir cosmique');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (19, 'omniscient');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (20, 'omnipotent');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (21, 'projection astrale');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (22, 'métamorphisme');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (23, 'Génie scientifique');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (24, 'Stratège et tacticien.');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (25, 'modification de la réalité');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (26, 'Magie, sorcellerie');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (27, 'projection d\'energie');
INSERT INTO `Marvel`.`pouvoirs` (`idpouvoirs`, `nom`) VALUES (28, 'changement de taille');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`arme`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (2, 'Stormbreaker ');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (1, 'Mjöllnir');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (3, 'Bouclier en vibranium');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (4, 'Lasso magique');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (5, 'Bouclier');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (6, 'Epée');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (7, 'Bracelet');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (8, 'Casque');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (9, 'Gant de l\'Infini');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (10, 'dagues');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (11, 'armure');
INSERT INTO `Marvel`.`arme` (`idarme`, `nom`) VALUES (0, 'sans arme');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`pouvoir_possede`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (3, 1, '20', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (3, 2, '20', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (3, 3, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 7, '100', 'Sous la forme Hulk', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 6, '80', 'Sous la forme Hulk', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 5, '100', 'Sous la forme Hulk', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 4, '100', 'Sous la forme Hulk', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (1, 7, '95', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (1, 4, '95', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (1, 8, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 9, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 10, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 11, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 12, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 13, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (8, 14, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (10, 18, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (11, 3, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (11, 4, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (11, 7, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 16, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 4, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 1, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 5, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 7, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 21, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (24, 22, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (4, 25, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (4, 26, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (5, 14, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (5, 27, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (5, 28, NULL, NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 23, '100', 'Sous la forme Banner', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (2, 15, '100', 'Sous la forme Banner', DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 23, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 16, '120', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 4, '80', NULL, 11);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 7, '80', NULL, 11);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 10, '50', NULL, 11);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (6, 27, '50', NULL, 11);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (1, 10, '40', NULL, 1);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (1, 10, '40', NULL, 2);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (7, 7, '70', NULL, 3);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (7, 7, '20', NULL, 0);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (7, 5, '30', NULL, 0);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (17, 23, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (17, 15, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (13, 23, '110', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (13, 15, '110', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (26, 15, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (26, 26, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (26, 21, '40', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (31, 15, '100', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (31, 23, '110', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (31, 4, '70', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (48, 15, '150', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (48, 23, '150', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (48, 4, '80', NULL, DEFAULT);
INSERT INTO `Marvel`.`pouvoir_possede` (`idpersonnage`, `idpouvoirs`, `intensite`, `commentaire`, `arme_idarme`) VALUES (65, 15, '120', NULL, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`Ennemi_de`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (1, 24);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (1, 48);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (1, 11);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (2, 24);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (2, 48);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (2, 11);
INSERT INTO `Marvel`.`Ennemi_de` (`id_personnage`, `id_ennemie`) VALUES (49, 58);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`Films`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (1, 2008, 'Iron Man', 'https://fr.wikipedia.org/wiki/Iron_Man_(film)', 7);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (2, 2008, 'L\'Incroyable Hulk', 'https://fr.wikipedia.org/wiki/L%27Incroyable_Hulk_(film)', 5);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (3, 2010, 'Iron Man 2', 'https://fr.wikipedia.org/wiki/Iron_Man_2', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (4, 2011, 'Thor', 'https://fr.wikipedia.org/wiki/Thor_(film)', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (5, 2011, 'Captain America: First Avenger', 'https://fr.wikipedia.org/wiki/Captain_America:_First_Avenger', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (6, 2012, 'Avengers', 'https://fr.wikipedia.org/wiki/Avengers_(film)', 9);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (7, 2013, 'Iron Man 3', 'https://fr.wikipedia.org/wiki/Iron_Man_3', 7);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (8, 2013, 'Thor : Le Monde des ténèbres', 'https://fr.wikipedia.org/wiki/Thor_:_Le_Monde_des_t%C3%A9n%C3%A8bres', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (9, 2014, 'Captain America : Le Soldat de l\'hiver', 'https://fr.wikipedia.org/wiki/Captain_America_:_Le_Soldat_de_l%27hiver', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (10, 2014, 'Les Gardiens de la Galaxie', 'https://fr.wikipedia.org/wiki/Les_Gardiens_de_la_Galaxie_(film)', 8);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (11, 2015, 'Avengers : L\'Ère d\'Ultron', 'https://fr.wikipedia.org/wiki/Avengers_:_L%27%C3%88re_d%27Ultron', 9);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (12, 2015, 'Ant-Man', 'https://fr.wikipedia.org/wiki/Ant-Man_(film)', 8);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (13, 2016, 'Captain America: Civil War', 'https://fr.wikipedia.org/wiki/Captain_America:_Civil_War', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (14, 2016, 'Doctor Strange', 'https://fr.wikipedia.org/wiki/Doctor_Strange_(film)', 9);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (15, 2017, 'Les Gardiens de la Galaxie Vol. 2', 'https://fr.wikipedia.org/wiki/Les_Gardiens_de_la_Galaxie_Vol._2', 8);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (16, 2017, 'Spider-Man: Homecoming', 'https://fr.wikipedia.org/wiki/Spider-Man:_Homecoming', 7);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (17, 2017, 'Thor : Ragnarok', 'https://fr.wikipedia.org/wiki/Thor_:_Ragnarok', 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (18, 2018, 'Black Panther', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (19, 2018, 'Avengers: Infinity War', NULL, 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (20, 2018, 'Ant-Man et la Guêpe', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (21, 2019, 'Captain Marvel', NULL, 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (22, 2019, 'Avengers: Endgame', NULL, 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (23, 2019, 'Spider-Man: Far From Home', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (24, 2020, 'Black Widow', 'https://fr.wikipedia.org/wiki/Black_Widow_(film)', 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (25, 2020, 'Eternals', 'https://fr.wikipedia.org/wiki/Eternals', 9);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (26, 2015, 'Les Quatre Fantastiques', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (27, 2007, 'Les Quatre Fantastiques et le Surfer d\'argent ', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (28, 2017, 'Wonder Woman', 'https://fr.wikipedia.org/wiki/Wonder_Woman_(film,_2017)', 8);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (29, 2016, ' Batman v Superman : L\'Aube de la Justice', 'https://fr.wikipedia.org/wiki/Batman_v_Superman_:_L%27Aube_de_la_justice', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (30, 2017, ' Justice League', 'https://fr.wikipedia.org/wiki/Justice_League_(film)', 6);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (31, 2005, 'Elektra ', 'https://fr.wikipedia.org/wiki/Elektra_(film,_2005)', 2);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (32, 2020, 'WONDER WOMAN 1984', 'https://fr.wikipedia.org/wiki/Wonder_Woman_1984', 10);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (33, 2021, 'Doctor Strange 2', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (34, 2021, 'Wanda Vision', NULL, NULL);
INSERT INTO `Marvel`.`Films` (`idFilms`, `année`, `titre`, `lien`, `note`) VALUES (35, 2021, 'Loki', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Marvel`.`apparait_dans`
-- -----------------------------------------------------
START TRANSACTION;
USE `Marvel`;
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (8, 28);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (8, 29);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (8, 30);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (6, 1);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (2, 2);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 4);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 8);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 17);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 19);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (1, 22);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (3, 3);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (6, 3);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (24, 4);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (7, 5);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (49, 5);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (2, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (3, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (6, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (24, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (7, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (52, 6);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (41, 7);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (56, 7);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (6, 7);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (24, 8);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (57, 9);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (3, 9);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (7, 9);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (58, 9);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (34, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (35, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (59, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (25, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (60, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (61, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (62, 10);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (7, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (2, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (3, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (4, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (6, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (23, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (48, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (52, 11);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (18, 31);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (53, 12);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (58, 12);
INSERT INTO `Marvel`.`apparait_dans` (`personnage_idpersonnage`, `idFilms`) VALUES (8, 32);

COMMIT;