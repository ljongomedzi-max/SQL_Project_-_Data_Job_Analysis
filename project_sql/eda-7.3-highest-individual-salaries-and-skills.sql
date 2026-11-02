-- Return the highest-paid individual job postings with their associated skills.
SELECT
    j.job_id,
    j.job_title_short,
    j.job_title,
    c.name AS company_name,
    j.salary_year_avg,
    j.job_location,
    j.job_via,
    STRING_AGG(DISTINCT s.skills, ', ' ORDER BY s.skills) AS skills
FROM job_postings_fact AS j
LEFT JOIN company_dim AS c
    ON j.company_id = c.company_id
LEFT JOIN skills_job_dim AS sj
    ON j.job_id = sj.job_id
LEFT JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
WHERE j.salary_year_avg IS NOT NULL
GROUP BY
    j.job_id,
    j.job_title_short,
    j.job_title,
    c.name,
    j.salary_year_avg,
    j.job_location,
    j.job_via
ORDER BY j.salary_year_avg DESC
LIMIT 15;