SELECT *
INTO [Maternal Health Risk Data Set_Backup]
FROM [Maternal Health Risk Data Set];

SELECT
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_NULL,
    SUM(CASE WHEN SystolicBP IS NULL THEN 1 ELSE 0 END) AS SystolicBP_NULL,
    SUM(CASE WHEN DiastolicBP IS NULL THEN 1 ELSE 0 END) AS DiastolicBP_NULL,
    SUM(CASE WHEN Blood_sugar IS NULL THEN 1 ELSE 0 END) AS Blood_sugar_NULL,
    SUM(CASE WHEN BodyTemp IS NULL THEN 1 ELSE 0 END) AS BodyTemp_NULL,
    SUM(CASE WHEN HeartRate IS NULL THEN 1 ELSE 0 END) AS HeartRate_NULL,
    SUM(CASE WHEN RiskLevel IS NULL THEN 1 ELSE 0 END) AS RiskLevel_NULL
FROM [Maternal Health Risk Data Set];

WITH DuplicateRows AS
(
    SELECT
        Age,
        SystolicBP,
        DiastolicBP,
        Blood_sugar,
        BodyTemp,
        HeartRate,
        RiskLevel,
        ROW_NUMBER() OVER
        (
            PARTITION BY
                Age,
                SystolicBP,
                DiastolicBP,
                Blood_sugar,
                BodyTemp,
                HeartRate,
                RiskLevel
            ORDER BY (SELECT NULL)
        ) AS RowNum
    FROM [Maternal Health Risk Data Set]
)
SELECT *
FROM DuplicateRows
WHERE RowNum > 1;

SELECT *
FROM [Maternal Health Risk Data Set]
WHERE Age <= 0;

SELECT *
FROM [Maternal Health Risk Data Set]
WHERE SystolicBP <= 0;
SELECT *
FROM [Maternal Health Risk Data Set]
WHERE DiastolicBP <= 0;
SELECT *
FROM [Maternal Health Risk Data Set]
WHERE Blood_sugar <= 0;

SELECT *
FROM [Maternal Health Risk Data Set]
WHERE BodyTemp <= 0;
SELECT *
FROM [Maternal Health Risk Data Set]
WHERE HeartRate <= 0;

SELECT RiskLevel, COUNT(*) AS Frequency
FROM [Maternal Health Risk Data Set]
GROUP BY RiskLevel
ORDER BY Frequency DESC;
SELECT
    MIN(Age) AS Min_Age,
    MAX(Age) AS Max_Age,
    MIN(SystolicBP) AS Min_SystolicBP,
    MAX(SystolicBP) AS Max_SystolicBP,
    MIN(DiastolicBP) AS Min_DiastolicBP,
    MAX(DiastolicBP) AS Max_DiastolicBP,
    MIN(Blood_sugar) AS Min_BloodSugar,
    MAX(Blood_sugar) AS Max_BloodSugar,
    MIN(BodyTemp) AS Min_BodyTemp,
    MAX(BodyTemp) AS Max_BodyTemp,
    MIN(HeartRate) AS Min_HeartRate,
    MAX(HeartRate) AS Max_HeartRate
FROM [Maternal Health Risk Data Set];
SELECT TOP 20 *
FROM [Maternal Health Risk Data Set];













