-- https://www.sql-practice.com/
/* Patients Table Information
	Table				Info
	patient_id			INT
	first_name			TEXT
	last_name			TEXT
	gender				CHAR(1)
	birth_date			DATE
	city				TEXT
	province_id			CHAR(2)
	allergies			TEXT
	height				INT
	weight				INT
*/

-- 1. Show first name, last name, and gender of patients whose gender is 'M'
SELECT first_name, last_name, gender
	FROM patients
WHERE gender = 'M';

-- 2. Show first name and last name of patients who does not have allergies. (null)
SELECT first_name,last_name 
	FROM patients
WHERE allergies is null;

-- 3. Show first name of patients that start with the letter 'C'
SELECT first_name
	FROM patients
WHERE first_name like 'C%';

-- 4. Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name,last_name 
	FROM patients
WHERE weight BETWEEN 100 AND 120;

-- 5. Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies is NULL

-- 6. Show first name and last name concatinated into one column to show their full name.
SELECT first_name|| ' ' || last_name
	FROM patients;

-- 7. Show how many patients have a birth_date with 2010 as the birth year.
SELECT COUNT(*)
	FROM patients
WHERE strftime('%Y', birth_date) = '2010';

-- 8. Show the first_name, last_name, and height of the patient with the greatest height.
SELECT first_name, last_name, height
	 FROM patients
ORDER BY height desc
LIMIT 1;

--OR / ALTERNATE SOLUTION
SELECT first_name, last_name, height
	 FROM patients
WHERE 
	height = (SELECT MAX(height) 
				FROM patients); 

-- 9. Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000
SELECT *
	 FROM patients
WHERE patient_id IN  (1,45,534,879,1000);

-- 10. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.
SELECT DISTINCT city
	FROM patients
WHERE province_id ='NS';

-- 11. Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70
SELECT first_name, last_name, birth_date
	 FROM patients
WHERE 
	height > 160 AND
	weight > 70;

-- 12. Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'
SELECT first_name, last_name, allergies
	 FROM patients
WHERE 
	allergies is NOT NULL AND
	city = 'Hamilton';

-- 13. Show unique birth years from patients and order them by ascending.
SELECT DISTINCT strftime('%Y', birth_date) AS birth_year
	FROM patients
ORDER BY birth_year ASC;

-- 14. Show unique first names from the patients table which only occurs once in the list.
-- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
SELECT first_name
FROM patients
GROUP BY first_name
HAVING COUNT(first_name)=1;

-- 15. Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long
SELECT patient_id, first_name
	FROM patients
WHERE first_name LIKE 's%s' AND 
	  first_name LIKE '______%';

-- 16. Display every patient's first_name. Order the list by the length of each name and then by alphabetically.
SELECT first_name
	FROM patients
ORDER BY LENGTH(first_name), first_name;








	