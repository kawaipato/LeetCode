SELECT categories.category,
       COUNT(accounts.income) AS accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary' AS category
    UNION ALL
    SELECT 'High Salary' AS category
) AS categories
LEFT JOIN Accounts AS accounts ON (
    CASE
        WHEN categories.category = 'Low Salary' AND accounts.income < 20000 THEN 1
        WHEN categories.category = 'Average Salary' AND accounts.income BETWEEN 20000 AND 50000 THEN 1
        WHEN categories.category = 'High Salary' AND accounts.income > 50000 THEN 1
        ELSE 0
    END
) = 1
GROUP BY categories.category;
