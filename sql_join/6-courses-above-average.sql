SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN enrollments AS e
    ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING COUNT(e.course_id) > (
    SELECT AVG(course_enrollment_count)
    FROM (
        SELECT COUNT(e2.course_id) AS course_enrollment_count
        FROM courses AS c2
        LEFT JOIN enrollments AS e2
            ON c2.id = e2.course_id
        GROUP BY c2.id
    ) AS enrollment_counts
)
ORDER BY course_title ASC;
