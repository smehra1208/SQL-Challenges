-- https://www.sql-practice.com/
/* Patients Table Information 			Admissions Table Information 		Province_names Table information
	Table				Info			Table				Info			Table				Info
	patient_id			INT				patient_id			INT				province_id			CHAR(2)
	first_name			TEXT			admission_date		DATE			province_name		TEXT
	last_name			TEXT			discharge_date		DATE
	gender				CHAR(1)			diagnosis			TEXT
	birth_date			DATE			attending_doctor_id	INT
	city				TEXT
	province_id			CHAR(2)
	allergies			TEXT
	height				INT
	weight				INT
*/

-- 1.Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
SELECT P.first_name, last_name, PN.province_name
	FROM patients P
JOIN province_names PN
	ON P.province_id = PN.province_id

-- 2. Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
SELECT P.patient_id, first_name, last_name
	FROM patients P
JOIN admissions A
	ON P.patient_id = A.patient_id
WHERE A.diagnosis = 'Dementia'
	