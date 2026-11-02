SELECT
    s.skills,
    COUNT(*) AS job_count,
    ROUND(AVG(j.salary_year_avg), 0) AS average_salary,
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY j.salary_year_avg)::numeric,
        0
    ) AS median_salary
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj
    ON j.job_id = sj.job_id
INNER JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
WHERE j.job_title_short = 'Data Analyst'
    AND j.salary_year_avg IS NOT NULL
GROUP BY s.skills
HAVING COUNT(*) >= 500
ORDER BY job_count DESC;