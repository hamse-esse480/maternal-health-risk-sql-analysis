# Maternal Health Risk SQL Analysis

## Project Overview
A descriptive SQL Server analysis of maternal-health measurements and the risk category recorded in the dataset. The project demonstrates data validation, cleaning checks, descriptive statistics, category counts, and unadjusted comparisons.

This is an educational analysis of an existing dataset. It is not a clinical diagnostic tool and does not estimate causal effects.

## Tools
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL

## Dataset and Source
The closest identifiable public source is the [UCI Machine Learning Repository — Maternal Health Risk](https://archive.ics.uci.edu/dataset/863/maternal+health+risk). UCI describes data collected from hospitals, community clinics, and maternal-health services in rural Bangladesh. Its current catalog entry reports 1,013 instances and six features; publications describing other commonly circulated versions report 1,014 records and seven columns when the outcome field is included.

**The exact file used in this repository has not been tied to a specific download/version.** Therefore, the record count and schema must be checked against the CSV imported into SQL Server rather than assumed from a secondary source. Fields described for this dataset include Age, SystolicBP, DiastolicBP, blood sugar, BodyTemp, HeartRate, and RiskLevel.

## Analysis Workflow
1. [01_data_Check& Validation.sql](<./01_data_Check%26%20Validation.sql>) — initial checks and validation
2. [02_data_cleaning.sql](./02_data_cleaning.sql) — cleaning steps
3. [03_descriptive_statistics.sql](./03_descriptive_statistics.sql) — descriptive statistics
4. [04_risk_distribution.sql](./04_risk_distribution.sql) — distribution of source risk labels
5. [05_bivariate_analysis.sql](./05_bivariate_analysis.sql) — unadjusted comparisons
6. [06_findings_interpretation.sql](./06_findings_interpretation.sql) — grouped summaries and cross-tabulations

Run the scripts in order against the source table expected by the SQL files. Confirm table and column names against your database.

## Results and Verification Status
No numerical findings are presented here as independently verified. Before reporting totals, percentages, or group comparisons, rerun the SQL scripts on the final imported/cleaned table and save the output tables or screenshots. Record the row count before and after cleaning and explain any exclusions.

## Interpretation and Limitations
- Treat RiskLevel as a category supplied by the dataset; do not infer clinical cut-offs from the label alone.
- The dataset is associated with maternal-health data from rural Bangladesh; it should not be described as a representative sample of Somaliland or another population.
- Descriptive and bivariate summaries do not establish causation or independent associations.
- Document the exact download URL, version, license, variable definitions, missing-value checks, and any cleaning decisions.
- Do not use dataset labels to diagnose individuals or guide clinical care.

## Project Purpose
This project demonstrates SQL skills in data validation, cleaning, descriptive analysis, grouped summaries, and cautious interpretation of health data.

## References
- UCI Machine Learning Repository. [Maternal Health Risk dataset](https://archive.ics.uci.edu/dataset/863/maternal+health+risk).
- [Predicting maternal risk level using machine learning models](https://bmcpregnancychildbirth.biomedcentral.com/counter/pdf/10.1186/s12884-024-07030-9) — discusses a commonly used version with 1,014 observations and seven attributes.

## Code Review Findings
A static review of the SQL scripts found issues to resolve before treating category summaries as final:
- In `04_risk_distribution.sql`, the age-band `ELSE '70+'` also captures ages below the first band and NULL ages. Create explicit age bands and separate missing/out-of-range ages.
- In `05_bivariate_analysis.sql`, blood-pressure, blood-sugar, heart-rate, and body-temperature bands use hard-coded labels such as “Normal” and “High”; several decimal intervals are not continuous. The script also labels heart rates 61–90 as “High Heart Rate.” Verify units and a cited clinical reference, or rename these as purely descriptive value bands and handle gaps explicitly.
- The cleaning script identifies duplicate rows and invalid values but the presence of a query does not prove they were removed or resolved. Record the decisions and before/after counts.

These are code-review observations; the SQL has not been executed against your local database during this review.

