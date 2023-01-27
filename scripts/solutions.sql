-- Solution exercise 1
select d.first_name
from doctor d,
    patient p,
    appointment a
where (
        d.id = a.doctor_id
        and p.id = a.patient_id
    )
    and p.first_name = 'Cesar';
-- Solution exercise 2
select distinct p.first_name
from patient p,
    room r,
    appointment a
where p.injure = 'Broken Leg'
    and (
        a.patient_id = p.id
        and a.room_id = 2
    );
-- Solution exercise 3
-- Patients that are bigger than someone else
select *
from patient p1,
    patient p2
where p1.birth_date > p2.birth_date;
-- Patients that have an appointment
select p1.first_name
from doctor d1,
    appointment a1,
    patient p1
where d1.id = a1.doctor_id
    and a1.patient_id = p1.id
    and d1.specialization = 'Emergency'
    and p1.birth_date = (
        select min(p2.birth_date)
        from doctor d2,
            appointment a2,
            patient p2
        where d2.id = a2.doctor_id
            and a2.patient_id = p2.id
            and d2.specialization = 'Emergency'
    );