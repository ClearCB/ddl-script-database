-- Script to insert some data at your database
INSERT INTO doctor VALUES (1,"Antonio", "Fernandez", "1970/6/15", "Pediatric", FALSE);
INSERT INTO doctor VALUES (2,"Maria", "Casas", "1980/3/03", "Emergency", FALSE);
INSERT INTO doctor VALUES (3,"Sonia", "Marquinez", "2000/06/23", "Cardiology", TRUE);
INSERT INTO area VALUES (1,1,"Pediatric");
INSERT INTO area VALUES (2,1,"Emergency");
INSERT INTO area VALUES (3,1,"Cardiology");
INSERT INTO room VALUES (1,1);
INSERT INTO room VALUES (2,2);
INSERT INTO room VALUES (3,3);
INSERT INTO room VALUES (4,3);
INSERT INTO patient VALUES (3,"Cesar", "Gonzalez", "2013/8/8", "Headache", FALSE);
INSERT INTO patient VALUES (7,"Juan", "Cano", "1999/12/09", "Broken Leg", TRUE);
INSERT INTO patient VALUES (19,"Luisa", "Gari", "2022/01/01", "Hand cut", FALSE);
INSERT INTO appointment  VALUES (1, "2023/02/10", 1,3,1);
INSERT INTO appointment  VALUES (2, "2023/01/26", 2,7,2);
INSERT INTO appointment  VALUES (3, "2023/03/01", 2,19,2);