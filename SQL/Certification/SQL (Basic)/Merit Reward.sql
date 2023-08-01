SELECT
    ei.employee_ID,
    ei.name
FROM
    employee_information AS ei,
    last_quarter_bonus AS lqb
WHERE
    ei.employee_ID = lqb.employee_ID
AND
    lqb.bonus >= 5000
AND
    ei.division = 'HR'
