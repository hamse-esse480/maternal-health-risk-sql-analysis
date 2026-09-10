--Hadda waxaan u gudbaynaa analysis-ka xiriirka u dhexeeya RiskLevel iyo clinical variables.

--RiskLevel ma ku kala duwan yahay SystolicBP categories?

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CASE
        WHEN SystolicBP BETWEEN 70 AND 120 THEN 'Normal'
        WHEN SystolicBP BETWEEN 121 AND 150 THEN 'Elevated'
        WHEN SystolicBP BETWEEN 151 AND 160 THEN 'High'
        ELSE '161+'
    END AS SystolicBP_Category,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN SystolicBP BETWEEN 70 AND 120 THEN 'Normal'
                WHEN SystolicBP BETWEEN 121 AND 150 THEN 'Elevated'
                WHEN SystolicBP BETWEEN 151 AND 160 THEN 'High'
                ELSE '161+'
            END
        )
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY
    RiskLevel,
    CASE
        WHEN SystolicBP BETWEEN 70 AND 120 THEN 'Normal'
        WHEN SystolicBP BETWEEN 121 AND 150 THEN 'Elevated'
        WHEN SystolicBP BETWEEN 151 AND 160 THEN 'High'
        ELSE '161+'
    END;

--RiskLevel ma ku kala duwan yahay DiastolicBP categories?

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CASE
        WHEN DiastolicBP BETWEEN 49 AND 70 THEN 'Normal'
        WHEN DiastolicBP BETWEEN 71 AND 85 THEN 'Elevated'
        WHEN DiastolicBP BETWEEN 86 AND 100 THEN 'High'
        ELSE '101+'
    END AS DiastolicBP_Category,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN DiastolicBP BETWEEN 49 AND 70 THEN 'Normal'
                WHEN DiastolicBP BETWEEN 71 AND 85 THEN 'Elevated'
                WHEN DiastolicBP BETWEEN 86 AND 100 THEN 'High'
                ELSE '101+'
            END
        )
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY
    RiskLevel,
    CASE
        WHEN DiastolicBP BETWEEN 49 AND 70 THEN 'Normal'
        WHEN DiastolicBP BETWEEN 71 AND 85 THEN 'Elevated'
        WHEN DiastolicBP BETWEEN 86 AND 100 THEN 'High'
        ELSE '101+'
    END;
--RiskLevel ma ku kala duwan yahay Blood_Sugar_categories?

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CASE
        WHEN Blood_Sugar BETWEEN 6.0 AND 10.0 THEN 'Normal'
        WHEN Blood_Sugar BETWEEN 10.1 AND 15.0 THEN 'Elevated'
        WHEN Blood_Sugar BETWEEN 15.1 AND 19.0 THEN 'High'
        ELSE '19.1+'
    END AS Blood_Sugar_Category,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN Blood_Sugar BETWEEN 6.0 AND 10.0 THEN 'Normal'
                WHEN Blood_Sugar BETWEEN 10.1 AND 15.0 THEN 'Elevated'
                WHEN Blood_Sugar BETWEEN 15.1 AND 19.0 THEN 'High'
                ELSE '19.1+'
            END
        )
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY
    RiskLevel,
    CASE
        WHEN Blood_Sugar BETWEEN 6.0 AND 10.0 THEN 'Normal'
        WHEN Blood_Sugar BETWEEN 10.1 AND 15.0 THEN 'Elevated'
        WHEN Blood_Sugar BETWEEN 15.1 AND 19.0 THEN 'High'
        ELSE '19.1+'
    END;

--RiskLevel ma ku kala duwan yahay Heart Rate categories?

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CASE
        WHEN HeartRate BETWEEN 7 AND 40 THEN 'Low Heart Rate'
        WHEN HeartRate BETWEEN 41 AND 60 THEN 'Middle Heart Rate'
        WHEN HeartRate BETWEEN 61 AND 90 THEN 'High Heart Rate'
        ELSE 'Very High Heart Rate'
    END AS Heart_Rate_Category,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN HeartRate BETWEEN 7 AND 40 THEN 'Low Heart Rate'
                WHEN HeartRate BETWEEN 41 AND 60 THEN 'Middle Heart Rate'
                WHEN HeartRate BETWEEN 61 AND 90 THEN 'High Heart Rate'
                ELSE 'Very High Heart Rate'
            END
        )
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY
    RiskLevel,
    CASE
        WHEN HeartRate BETWEEN 7 AND 40 THEN 'Low Heart Rate'
        WHEN HeartRate BETWEEN 41 AND 60 THEN 'Middle Heart Rate'
        WHEN HeartRate BETWEEN 61 AND 90 THEN 'High Heart Rate'
        ELSE 'Very High Heart Rate'
    END;

--RiskLevel ma ku kala duwan yahay BodyTem_categories?

SELECT 
    RiskLevel,
    COUNT(*) AS frequency,
    CASE
        WHEN BodyTemp BETWEEN 98.0 AND 99.0 THEN 'Normal'
        WHEN BodyTemp BETWEEN 99.1 AND 101.0 THEN 'Elevated'
        WHEN BodyTemp BETWEEN 101.1 AND 103.0 THEN 'High'
        ELSE 'Very High'
    END AS BodyTemp_Category,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN BodyTemp BETWEEN 98.0 AND 99.0 THEN 'Normal'
                WHEN BodyTemp BETWEEN 99.1 AND 101.0 THEN 'Elevated'
                WHEN BodyTemp BETWEEN 101.1 AND 103.0 THEN 'High'
                ELSE 'Very High'
            END
        )
        AS DECIMAL(5,2)
    ) AS Percentage
FROM [Maternal Health Risk Data Set]
GROUP BY
    RiskLevel,
    CASE
        WHEN BodyTemp BETWEEN 98.0 AND 99.0 THEN 'Normal'
        WHEN BodyTemp BETWEEN 99.1 AND 101.0 THEN 'Elevated'
        WHEN BodyTemp BETWEEN 101.1 AND 103.0 THEN 'High'
        ELSE 'Very High'
    END;