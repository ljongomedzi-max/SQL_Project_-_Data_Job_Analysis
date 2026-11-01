-- Count unique postings that list each skill across all job categories.
SELECT
    s.skills,
    COUNT(DISTINCT sj.job_id) AS job_postings
FROM skills_job_dim AS sj
INNER JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
GROUP BY s.skills
ORDER BY job_postings DESC
LIMIT 10;
