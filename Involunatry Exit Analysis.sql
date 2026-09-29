SELECT
    Exit_Reason,
    COUNT(*) AS Involuntary_Exits

FROM employee_attrition

WHERE Attrition_Type = 'Involuntary'

GROUP BY Exit_Reason

ORDER BY Involuntary_Exits DESC;