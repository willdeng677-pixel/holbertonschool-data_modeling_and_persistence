SELECT DISTINCT
    instructors.name AS instructor_name
FROM instructors
INNER JOIN courses
    ON instructors.id = courses.instructor_id
INNER JOIN enrollments
    ON courses.id = enrollments.course_id
ORDER BY instructor_name ASC;
