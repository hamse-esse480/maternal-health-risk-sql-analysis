-- ============================================================
-- 06. FINDINGS & INTERPRETATION
-- Dataset table: [Maternal Health Risk Data Set]
-- Purpose: Produce descriptive outputs for reporting.
-- Run in the database that contains the source table.
-- ============================================================

-- 1. Risk-level distribution
SELECT
    RiskLevel,
    COUNT(*) AS Records,
    CAST(100.0 * COUNT(*) / NULLIF(SUM(COUNT(*)) OVER (), 0) AS DECIMAL(6,2)) AS Percent_of_Rows
FROM [Maternal Health Risk Data Set]
GROUP BY RiskLevel
ORDER BY Records DESC;

-- 2. Descriptive clinical-variable summaries by risk label
SELECT
    RiskLevel,
    COUNT(*) AS Records,
    CAST(AVG(CAST(Age AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_Age,
    CAST(AVG(CAST(SystolicBP AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_SystolicBP,
    CAST(AVG(CAST(DiastolicBP AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_DiastolicBP,
    CAST(AVG(CAST(Blood_sugar AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_BloodSugar,
    CAST(AVG(CAST(BodyTemp AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_BodyTemp,
    CAST(AVG(CAST(HeartRate AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Mean_HeartRate
FROM [Maternal Health Risk Data Set]
GROUP BY RiskLevel
ORDER BY RiskLevel;

-- 3. Age-band distribution by risk label
WITH AgeBands AS
(
    SELECT
        CASE
            WHEN Age < 20 THEN 'Under 20'
            WHEN Age BETWEEN 20 AND 29 THEN '20-29'
            WHEN Age BETWEEN 30 AND 39 THEN '30-39'
            WHEN Age BETWEEN 40 AND 49 THEN '40-49'
            ELSE '50 and above'
        END AS AgeBand,
        RiskLevel
    FROM [Maternal Health Risk Data Set]
    WHERE Age IS NOT NULL
)
SELECT
    AgeBand,
    RiskLevel,
    COUNT(*) AS Records,
    CAST(
        100.0 * COUNT(*) /
        NULLIF(SUM(COUNT(*)) OVER (PARTITION BY AgeBand), 0)
        AS DECIMAL(6,2)
    ) AS Percent_within_Age_Band
FROM AgeBands
GROUP BY AgeBand, RiskLevel
ORDER BY AgeBand, RiskLevel;

-- Interpretation reminders:
-- * RiskLevel categories are source-dataset labels; verify source definitions.
-- * Group differences are descriptive and do not establish causation.
-- * Do not interpret this dataset output as individual clinical advice.
