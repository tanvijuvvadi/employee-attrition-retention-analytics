SELECT
    CASE
        WHEN Absence_Days <= 3 THEN '0-3 Days'
        WHEN Absence_Days <= 7 THEN '4-7 Days'
        WHEN Absence_Days <= 14 THEN '8-14 Days'
        ELSE '15+ Days'
    END AS Absence_Group,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY
    CASE
        WHEN Absence_Days <= 3 THEN '0-3 Days'
        WHEN Absence_Days <= 7 THEN '4-7 Days'
        WHEN Absence_Days <= 14 THEN '8-14 Days'
        ELSE '15+ Days'
    END;