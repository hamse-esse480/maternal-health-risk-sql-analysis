-- 1. Age Group Distribution

WITH datas AS (
    SELECT 
        COUNT(*) AS frequency,
        CASE
            WHEN Age BETWEEN 10 AND 18 THEN '10-18'
            WHEN Age BETWEEN 19 AND 27 THEN '19-27'
            WHEN Age BETWEEN 28 AND 36 THEN '28-36'
            WHEN Age BETWEEN 37 AND 44 THEN '37-44'
            WHEN Age BETWEEN 45 AND 52 THEN '45-52'
            WHEN Age BETWEEN 53 AND 60 THEN '53-60'
            WHEN Age BETWEEN 61 AND 69 THEN '61-69'
            ELSE '70+'
        END AS Age_Group
    FROM [Maternal Health Risk Data Set]
    GROUP BY 
        CASE
            WHEN Age BETWEEN 10 AND 18 THEN '10-18'
            WHEN Age BETWEEN 19 AND 27 THEN '19-27'
            WHEN Age BETWEEN 28 AND 36 THEN '28-36'
            WHEN Age BETWEEN 37 AND 44 THEN '37-44'
            WHEN Age BETWEEN 45 AND 52 THEN '45-52'
            WHEN Age BETWEEN 53 AND 60 THEN '53-60'
            WHEN Age BETWEEN 61 AND 69 THEN '61-69'
            ELSE '70+'
        END
)
SELECT
    Age_Group,
    frequency,
    CAST(
        frequency * 100.0 / SUM(frequency) OVER()
        AS DECIMAL(5,2)
    ) AS Percentage
FROM datas;


-- 2. Age Group × RiskLevel

WITH datas AS (
    SELECT 
        RiskLevel,
        COUNT(*) AS frequency,
        CASE
            WHEN Age BETWEEN 10 AND 18 THEN '10-18'
            WHEN Age BETWEEN 19 AND 27 THEN '19-27'
            WHEN Age BETWEEN 28 AND 36 THEN '28-36'
            WHEN Age BETWEEN 37 AND 44 THEN '37-44'
            WHEN Age BETWEEN 45 AND 52 THEN '45-52'
            WHEN Age BETWEEN 53 AND 60 THEN '53-60'
            WHEN Age BETWEEN 61 AND 69 THEN '61-69'
            ELSE '70+'
        END AS Age_Group
    FROM [Maternal Health Risk Data Set]
    GROUP BY 
        RiskLevel,
        CASE
            WHEN Age BETWEEN 10 AND 18 THEN '10-18'
            WHEN Age BETWEEN 19 AND 27 THEN '19-27'
            WHEN Age BETWEEN 28 AND 36 THEN '28-36'
            WHEN Age BETWEEN 37 AND 44 THEN '37-44'
            WHEN Age BETWEEN 45 AND 52 THEN '45-52'
            WHEN Age BETWEEN 53 AND 60 THEN '53-60'
            WHEN Age BETWEEN 61 AND 69 THEN '61-69'
            ELSE '70+'
        END
)
SELECT
    RiskLevel,
    Age_Group,
    frequency,
    CAST(
        frequency * 100.0 /
        SUM(frequency) OVER(PARTITION BY Age_Group)
        AS DECIMAL(5,2)
    ) AS Percentage
FROM datas;


-- 3. Overall RiskLevel Distribution

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER()
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY RiskLevel
ORDER BY RiskLevel DESC;


-- 4. Average Clinical Variables by RiskLevel

SELECT 
    RiskLevel,
    AVG(SystolicBP) AS Avg_SystolicBP,
    AVG(DiastolicBP) AS Avg_DiastolicBP,
    AVG(Blood_Sugar) AS Avg_Blood_Sugar,
    AVG(BodyTemp) AS Avg_BodyTemp,
    AVG(HeartRate) AS Avg_HeartRate,
    AVG(Age) AS Avg_Age
FROM [Maternal Health Risk Data Set]
GROUP BY RiskLevel;