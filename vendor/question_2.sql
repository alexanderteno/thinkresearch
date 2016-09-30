SELECT * 
FROM   patients 
WHERE  last_name LIKE '%mit%';

SELECT patients.id, 
       patients.mrn, 
       patients.first_name, 
       patients.middle_name, 
       patients.last_name, 
       patients.weight, 
       patients.height 
FROM   patients 
       LEFT JOIN encounters 
              ON patients.id = encounters.patient_id 
GROUP  BY patients.id, 
          patients.mrn, 
          patients.first_name, 
          patients.middle_name, 
          patients.last_name, 
          patients.weight, 
          patients.height 
HAVING Sum(CASE 
             WHEN encounters.discharged_at IS NULL THEN 1 
             ELSE 0 
           END) = 0;

SELECT DISTINCT patients.* 
FROM   patients 
       LEFT JOIN encounters 
              ON patients.id = encounters.patient_id 
WHERE  '2014-07-05' <= encounters.admitted_at 
       AND encounters.admitted_at <= '2014-08-19';
