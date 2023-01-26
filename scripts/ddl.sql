-- Script to create and use a database. And create all the tables needed.
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
    id INT NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE,
    injure VARCHAR(20),
    in_plant BOOLEAN,
    PRIMARY KEY (id)
);
CREATE TABLE appointment(
    id INT NOT NULL,
    appointment_date DATE,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    room_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(id),
    FOREIGN KEY (patient_id) REFERENCES patient(id),
    FOREIGN KEY (room_id) REFERENCES room(id)
);