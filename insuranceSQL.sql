-- Creating the Healthinsurance database -- 
CREATE DATABASE HealthInsurance;

-- using the database -- 
USE HealthInsurance;

-- Glancing Top five rows of the table in the database -- 
SELECT *
FROM healthinsurance.insurance
LIMIT 5;

-- Check for Null Values 
SELECT * 
FROM healthinsurance.insurance
WHERE age IS NULL OR sex IS NULL OR bmi IS NULL
   OR children IS NULL OR smoker IS NULL
   OR region IS NULL OR charges IS NULL;

-- Check for Duplicate Records:
SELECT age, sex, bmi, children, smoker, region, charges, COUNT(*)
FROM healthinsurance.insurance
GROUP BY age, sex, bmi, children, smoker, region, charges
HAVING COUNT(*) > 1;

-- identifying duplicate rows
SELECT *, COUNT(*)
FROM healthinsurance.insurance
GROUP BY age, sex, bmi, children, smoker, region, charges
HAVING COUNT(*) > 1;

-- Create a Temporary Table with Unique Records
CREATE TEMPORARY TABLE temp_insurance_records AS
SELECT age, sex, bmi, children, smoker, region, charges
FROM insurance
GROUP BY age, sex, bmi, children, smoker, region, charges;

-- Delete All Records from the Original Table
TRUNCATE TABLE insurance;

-- Insert Unique Records Back into the Original Table
INSERT INTO insurance
SELECT * FROM temp_insurance_records;

-- Drop the Temporary Table
DROP TEMPORARY TABLE temp_insurance_records;

-- Basic statistics
-- Age statistics
SELECT MIN(age) AS MinAge, MAX(age) AS MaxAge, AVG(age) AS AvgAge 
FROM healthinsurance.insurance;

-- BMI statistics
SELECT MIN(bmi) AS MinBMI, MAX(bmi) AS MaxBMI, AVG(bmi) AS AvgBMI 
FROM healthinsurance.insurance;

-- Charges statistics
SELECT MIN(charges) AS MinCharges, MAX(charges) AS MaxCharges, AVG(charges) AS AvgCharges 
FROM healthinsurance.insurance;

-- Data cleaning (e.g standardizing text fields)
-- Normalize region names
UPDATE insurance_records
SET region = TRIM(LOWER(region));
