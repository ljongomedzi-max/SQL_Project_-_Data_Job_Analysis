SELECT
    job_title_short,
    COUNT(*) AS job_count,
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY salary_year_avg)::numeric,
        0
    ) AS median_salary
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL
GROUP BY job_title_short
ORDER BY median_salary DESC;