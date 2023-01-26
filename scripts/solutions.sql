-- Solution exercise 1
select d.first_name from doctor d, patient p, appointment a where (d.id = a.doctor_id and p.id=a.patient_id) and p.first_name='Cesar';

-- Solution exercise 2
select distinct p.first_name from patient p, room r, appointment a where p.injure='Broken Leg' and (a.patient_id=p.id and a.room_id=2);

-- Solution exercise 3
select distinct patient.first_name from patient, doctor d,appointment a where d.specialization='Emergency' and patient.first_name=(select first_name from patient EXCEPT select p1.first_name from patient p1, patient p2 where DATE_FORMAT(p1.birth_date,"%Y%m%d")>DATE_FORMAT(p2.birth_date,"%Y%m%d"));
