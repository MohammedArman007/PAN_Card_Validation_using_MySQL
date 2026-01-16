# PAN_Card_Validation_using_MySQL
📌 Overview

This project focuses on cleaning, validating, and categorizing Indian PAN (Permanent Account Number) records using SQL.
The goal is to ensure that each PAN number strictly follows the official PAN format and business rules, and to classify them as Valid or Invalid.

The dataset is provided in Excel format and is processed after importing into a relational database.

🎯 Objectives

Clean and preprocess PAN number data

Validate PAN numbers based on official rules

Identify invalid, missing, and duplicate PANs

Generate summary statistics for reporting

📂 Dataset

File: PAN Number Validation Dataset.xlsx

Key Column: Pan_Numbers

🧹 Data Cleaning Steps

The following preprocessing steps were applied:

Removed NULL / missing PAN values

Eliminated duplicate PAN numbers

Trimmed leading and trailing spaces

Converted all PAN values to uppercase

Ensured only alphanumeric characters were present

✅ PAN Validation Rules

A PAN number is considered valid only if it satisfies all the following conditions:

🔹 General Format

Exactly 10 characters

Format: AAAAA1234A

🔹 First 5 Characters (Alphabets)

Must be uppercase letters (A–Z)

Adjacent characters cannot be the same (❌ AABCD)

All five characters cannot be sequential (❌ ABCDE, BCDEF)

🔹 Next 4 Characters (Digits)

Must be numeric (0–9)

Adjacent digits cannot be the same (❌ 1123)

Digits cannot form a full sequence (❌ 1234, 2345)

🔹 Last Character

Must be an uppercase alphabet

✅ Example of a Valid PAN
AHGVE1276F

🛠️ Technologies Used

MySQL

SQL Functions

Regular Expressions (REGEXP)

Excel (Data Source)

🧠 Key SQL Techniques Used

REGEXP for PAN format validation

User-defined functions to detect:

Adjacent characters

Sequential characters

Conditional logic using CASE

Aggregate queries for summary reporting

📊 Output Categories

PAN numbers are categorized into:

✅ Valid PAN

❌ Invalid PAN

⚠️ Missing / Incomplete PAN

📈 Summary Report Includes

Total records processed

Total valid PANs

Total invalid PANs

Total missing or incomplete PANs

🚀 How to Run

Import the dataset into MySQL

Execute the SQL scripts/functions

Run validation queries

View categorized PAN records and summary results

📌 Conclusion

This project demonstrates practical data validation, regex usage, and business-rule enforcement using SQL.
It closely mirrors real-world data quality checks performed in financial and government systems.
