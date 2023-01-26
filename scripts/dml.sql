-- Script to insert some data at your database
INSERT INTO doctor VALUES (1,"Antonio", "Fernandez", "1970/6/15", "Pediatric", TRUE);
INSERT INTO doctor VALUES (2,"Maria", "Casas", "1980/3/03", "Emergency", TRUE);
INSERT INTO doctor VALUES (3,"Sonia", "Marquinez", "2000/06/23", "Cardiology", FALSE);
INSERT INTO area VALUES (1,1,"Pediatric");
INSERT INTO area VALUES (2,2,"Emergency");
INSERT INTO area VALUES (3,4,"Cardiology");
INSERT INTO room VALUES (1,1);
INSERT INTO room VALUES (2,2);
INSERT INTO room VALUES (3,3);
INSERT INTO room VALUES (4,3);
INSERT INTO patient (first_name, last_name, birth_date, injure, in_plant) VALUES ("Cesar", "Gonzalez", "2013/8/8", "Headache", FALSE);
INSERT INTO patient (first_name, last_name, birth_date, injure, in_plant) VALUES ("Juan", "Cano", "1999/12/09", "Broken Leg", TRUE);
INSERT INTO patient (first_name, last_name, birth_date, injure, in_plant) VALUES ("Luisa", "Gari", "2022/01/01", "Hand cut", FALSE);
INSERT INTO appointment (appointment_date, doctor_id, patient_id, room_id) VALUES ("2023/02/10", 1,1,1);
INSERT INTO appointment (appointment_date, doctor_id, patient_id, room_id) VALUES ("2023/01/26", 2,2,2);
INSERT INTO appointment (appointment_date, doctor_id, patient_id, room_id) VALUES ("2023/03/01", 2,3,2);


