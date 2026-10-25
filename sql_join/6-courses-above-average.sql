SELECT c.title AS course_title
FROM courses AS course
LEFT JOIN enrollments AS enrollments
    ON courses.id = enrollments.course_id
GROUP BY course.id, course.title
HAVING COUNT(enrollment.course_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(enrollment2.course_id) AS enrollment_count
        FROM enrollments AS enrollment2
        GROUP BY enrollment2.course_id
    ) AS course_counts
)
ORDER BY course_title ASC;
