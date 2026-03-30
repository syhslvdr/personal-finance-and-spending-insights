SELECT
    Date AS date,
    TRIM(LOWER(Category)) AS category,
    CAST(PHP AS DECIMAL(10,2)) AS php
FROM personal_finance
WHERE
    income_expense = 'Expense'
    AND Date IS NOT NULL
    AND Category IS NOT NULL
    AND PHP IS NOT NULL;
