SELECT
    job_work_from_home,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS average_salary,
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY salary_year_avg)::numeric,
        0
    ) AS median_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home IS NOT NULL
GROUP BY job_work_from_home
ORDER BY job_work_from_home;