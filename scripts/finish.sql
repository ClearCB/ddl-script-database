-- Script to DESTROY all your database.
DELETE FROM appointment;
DELETE FROM patient;
DELETE FROM room;
DELETE FROM area;
DELETE FROM doctor;
DROP TABLE appointment;
DROP TABLE patient;
DROP TABLE room;
DROP TABLE area;
DROP TABLE doctor;
DROP DATABASE IF EXISTS medicalField; 