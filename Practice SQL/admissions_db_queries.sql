-- https://www.sql-practice.com/
/* Admissions Table Information
		patient_id				INT
		admission_date			DATE
		discharge_date			DATE
		diagnosis				TEXT
		attending_doctor_id		INT
*/

-- 1. Show the total number of admissions
SELECT COUNT(*) FROM admissions;

-- 2. Show all the columns from admissions where the patient was admitted and discharged on the same day.
SELECT * FROM admissions
	WHERE admission_date = discharge_date;

-- 3.Show the patient id and the total number of admissions for patient_id 579.
SELECT patient_id , COUNT(*) as total_admissions
	FROM admissions
WHERE patient_io = 579;

-- 4. Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
SELECT patient_id , diagnosis
	FROM admissions
GROUP BY patient_id, diagnosis
HAVING COUNT(*) > 1;






