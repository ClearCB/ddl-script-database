-- Script to generate and insert data to a database
DROP DATABASE IF EXISTS medicalField;
CREATE DATABASE medicalField;
use medicalField;
CREATE TABLE doctor (
    id INT NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE,
    specialization VARCHAR(20) NOT NULL,
    operative BOOLEAN,
    PRIMARY KEY (id)
);
CREATE TABLE area(
    id INT NOT NULL,
    floor_num SMALLINT(10),
    specialization VARCHAR(20),
    PRIMARY KEY (id)
);
CREATE TABLE room(
    id INT NOT NULL,
    area_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (area_id) REFERENCES area (id)
);
CREATE TABLE patient(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE,
    injure VARCHAR(20),
    in_plant BOOLEAN,
    PRIMARY KEY (id)
);
CREATE TABLE appointment(
    id INT NOT NULL AUTO_INCREMENT,
    appointment_date DATE,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    room_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(id),
    FOREIGN KEY (patient_id) REFERENCES patient(id),
    FOREIGN KEY (room_id) REFERENCES room(id)
);
INSERT INTO doctor VALUES (1,"Antonio", "Fernandez", "1970/6/15", "Pediatric", FALSE);
INSERT INTO doctor VALUES (2,"Maria", "Casas", "1980/3/03", "Emergency", FALSE);
INSERT INTO doctor VALUES (3,"Sonia", "Marquinez", "2000/06/23", "Cardiology", TRUE);
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