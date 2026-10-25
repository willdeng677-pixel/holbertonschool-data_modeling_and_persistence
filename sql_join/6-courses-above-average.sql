SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN enrollments AS e
    ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING COUNT(e.course_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(e2.course_id) AS enrollment_count
        FROM enrollments AS e2
        GROUP BY e2.course_id
    ) AS course_counts
)
ORDER BY course_title ASC;
