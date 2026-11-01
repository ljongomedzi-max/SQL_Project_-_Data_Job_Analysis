-- Count Data Analyst postings that list each skill.
SELECT
    s.skills,
    COUNT(DISTINCT j.job_id) AS job_postings
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj
    ON j.job_id = sj.job_id
INNER JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
WHERE j.job_title_short = 'Data Analyst'
GROUP BY s.skills
ORDER BY job_postings DESC
LIMIT 10;
