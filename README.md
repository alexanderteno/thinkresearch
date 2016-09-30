# Required Technologies:
* PostreSQL 9.4+ (Using 9.5.4)
* Ruby 2.2.1+ (Using 2.2.4p230)
* Rails 4.2.3+ (Using 5.0.0.1)

# Setup:

Run ```setup.bat``` in order to install required gems, and initialize the postgreSQL database.

# Notes:

PostgreSQL is currently configured to use the user 'postgres'

# Questions 2: Simple SQL Queries

1. All of the patients that their last_name contains the word "mit"

```SELECT * FROM patients WHERE last_name like '%mit%'```

| id | first_name | middle_name | last_name | weight | height | mrn | created_at | updated_at |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | James | John | Smith | 85 | 180 | THC123 | 2016-09-30 01:11:22.46758 | 2016-09-30 01:11:22.46758 |
 
2. All of the patients have been discharged from the system. That is, all of the patient's encounters have a value in the discharged_at column

```SELECT * FROM hmm```



3. All of the patient that have been admitted in between July 5th, 2014 and August 19, 2014

```SELECT DISTINCT patients.* FROM patients LEFT JOIN encounters ON patients.id = encounters.patient_id WHERE '2014-07-05' <= encounters.admitted_at and encounters.admitted_at <= '2014-08-19';```

| id | first_name | middle_name | last_name | weight | height |  mrn   |         created_at         |         updated_at |
|----|------------|-------------|-----------|--------|--------|--------|----------------------------|---------------------------- |
|  2 | Sandy      | Aria        | Mits      |     55 |    145 | THC124 | 2016-09-30 01:11:37.395434 | 2016-09-30 01:11:37.395434 |
|  3 | Bently     | Frank       | Lee       |     90 |    178 | THC125 | 2016-09-30 01:11:56.72654  | 2016-09-30 01:11:56.72654 |
