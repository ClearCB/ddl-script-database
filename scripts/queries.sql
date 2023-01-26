-- Commands to use some queries.
select d.first_name from doctor d, patient p, appointment a where (d.id = a.doctor_id and p.id=a.patient_id) and p.first_name='Cesar';
select d.first_name from doctor d, patient p, appointment a where (d.id = a.doctor_id and p.id=a.patient_id) and p.first_name='Juan';