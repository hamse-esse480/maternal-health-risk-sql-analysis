CREATE DATABASE Maternal_Health_DB;

CREATE TABLE [Maternal Health Risk Data Set]
(
    Age INT,
    SystolicBP INT,
    DiastolicBP INT,
    Blood_sugar DECIMAL(10,2),
    BodyTemp DECIMAL(5,2),
    HeartRate INT,
    RiskLevel VARCHAR(20)
);


SELECT *
FROM  [Maternal Health Risk Data Set]

SELECT COUNT(*) AS TotalRows
FROM[Maternal Health Risk Data Set];

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Maternal Health Risk Data Set';

SELECT TOP 10 *
FROM [Maternal Health Risk Data Set];