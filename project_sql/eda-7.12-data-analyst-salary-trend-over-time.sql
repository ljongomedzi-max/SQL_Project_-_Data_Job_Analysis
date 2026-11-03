SELECT
    DATE_TRUNC('month', job_posted_date) AS month,
    COUNT(*) AS salary_job_count,
    ROUND(AVG(salary_year_avg), 0) AS average_salary,
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY salary_year_avg)::numeric,
        0
    ) AS median_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY month
ORDER BY month;

