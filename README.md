# Maternal Health Risk SQL Analysis

## Project Overview

This project presents a SQL Server analysis of maternal health risk using the Maternal Health Risk dataset. It focuses on descriptive statistics, risk-level distribution, and bivariate summaries of selected maternal health indicators.

## Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Dataset

The project README reports 1,014 observations and the following variables:

- Age
- Systolic blood pressure
- Diastolic blood pressure
- Blood sugar
- Body temperature
- Heart rate
- Risk level

**Dataset source:** The exact source URL/version is not documented in this repository yet. Add the source page and any license/attribution requirements after checking the dataset file you downloaded.

## Analysis Workflow

The repository currently contains these scripts (filenames shown exactly as stored):

1. [`01_data_Check& Validation.sql`](<./01_data_Check%26%20Validation.sql>) — data checks and validation
2. [`02_data_cleaning.sql`](./02_data_cleaning.sql) — cleaning
3. [`03_descriptive_statistics.sql`](./03_descriptive_statistics.sql) — descriptive summaries
4. [`04_risk_distribution.sql`](./04_risk_distribution.sql) — risk-level distribution
5. [`05_bivariate_analysis.sql`](./05_bivariate_analysis.sql) — bivariate analysis

**Note:** A separate `06_Findings_&_Interpretation.sql` file is not present in the current repository. Findings are summarized in this README.

## Risk Categories

The dataset contains a `Risk Level` variable. Use the source dataset's own documentation to define the Low, Mid, and High categories and their thresholds; this README does not invent clinical cutoffs. The categories should be treated as dataset labels, not as a substitute for clinical assessment.

## Findings

The current project summary describes differences in risk-level distribution across age, blood pressure, blood sugar, heart rate, and body temperature. Re-run the current SQL scripts and report the exact counts and percentages from their outputs before publishing numerical findings.

## Data Quality and Limitations

- Confirm the original dataset source, version, license, and coding definitions.
- Document the handling of missing, invalid, and out-of-range values.
- Check that the 1,014-row count matches the final cleaned table.
- The dataset's risk labels and observational summaries do not establish causal relationships or provide individual medical advice.
- Results depend on the quality and representativeness of the source dataset.

## Project Purpose

This project demonstrates SQL Server skills in data validation, cleaning, descriptive analysis, summarization, and interpretation.
