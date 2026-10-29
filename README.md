# Maternal Health Risk SQL Analysis

## Project Overview
A descriptive SQL Server project exploring maternal health indicators and the risk labels supplied in the Maternal Health Risk dataset. The workflow covers data validation, cleaning, descriptive summaries, risk-label distribution, and comparisons across selected variables.

This is an exploratory dataset analysis, not a clinical diagnostic tool or a study of causal effects.

## Tools
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL

## Dataset
The project summary reports 1,014 records and seven fields: Age, SystolicBP, DiastolicBP, Blood_sugar, BodyTemp, HeartRate, and RiskLevel.

**Source and reproducibility:** The exact dataset download URL, version, license, and source data dictionary are not documented here. Confirm these details against the file used for the project. Check the reported record count against the final SQL Server table.

## Analysis Workflow
1. [01_data_Check& Validation.sql](<./01_data_Check%26%20Validation.sql>) — initial checks and validation
2. [02_data_cleaning.sql](./02_data_cleaning.sql) — cleaning steps
3. [03_descriptive_statistics.sql](./03_descriptive_statistics.sql) — descriptive statistics
4. [04_risk_distribution.sql](./04_risk_distribution.sql) — distribution of source risk labels
5. [05_bivariate_analysis.sql](./05_bivariate_analysis.sql) — unadjusted comparisons
6. [06_findings_interpretation.sql](./06_findings_interpretation.sql) — risk distribution, descriptive summaries by risk label, and age-band cross-tabulation

Run the scripts in the intended order in a database containing the source table, [Maternal Health Risk Data Set]. Confirm that table and column names match your local database.

## Interpretation
- RiskLevel is treated as a label supplied by the dataset. Do not assign clinical thresholds unless documented by the original source.
- Group summaries and cross-tabulations are descriptive. They do not establish causation or independent associations.
- Dataset labels must not be used to diagnose individuals or guide clinical care.

## Findings Status
The SQL scripts generate outputs for risk-label frequencies and descriptive summaries. Exact counts, percentages, and group comparisons have not been independently reproduced as part of this README review; run the scripts against the final database before publishing numerical claims.

## Data Quality and Limitations
- Document the original dataset source, version, license, and variable definitions.
- Record how missing, invalid, duplicate, and out-of-range values were assessed and handled.
- Compare row counts before and after cleaning and explain exclusions.
- Confirm the final row count and output tables against SQL Server results.
- Results depend on source-data quality and representativeness.

## Project Purpose
This project demonstrates SQL skills in data validation, cleaning, descriptive analysis, grouped summaries, and cautious interpretation of health data.
