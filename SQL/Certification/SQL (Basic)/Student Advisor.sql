SELECT
    si.roll_number,
    si.name
FROM
    student_information AS si,
    faculty_information AS fi
WHERE
    si.advisor = fi.employee_ID
AND
    (
        (fi.gender = 'M' and fi.salary >15000)
    OR
        (fi.gender = 'F' and fi.salary > 20000)
    )
