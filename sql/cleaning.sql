SELECT
    Date AS clean_date,
    TRIM(LOWER(Category)) AS clean_category,
    CAST(PHP AS DECIMAL(10,2)) AS clean_php
FROM personal_finance
WHERE
    income_expense = 'Expense'
    AND Date IS NOT NULL
    AND Category IS NOT NULL
    AND PHP IS NOT NULL;
