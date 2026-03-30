-- goal: identify and clean expense rows for analysis
-- output: data/processed/cleaned_finance.csv

SELECT
    Date AS date,
    TRIM(LOWER(Category)) AS category,
    CAST(PHP AS DECIMAL(10,2)) AS php
FROM personal_finance
WHERE
    income_expense = 'Expense'
    AND Date IS NOT NULL
    AND TRIM(Category) <> ''
    AND PHP IS NOT NULL;
