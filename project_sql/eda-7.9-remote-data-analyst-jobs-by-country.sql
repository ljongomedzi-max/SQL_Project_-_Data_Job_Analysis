SELECT
    job_country,
    COUNT(*) AS total_jobs,
    COUNT(*) FILTER (WHERE job_work_from_home = TRUE) AS remote_jobs,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE job_work_from_home = TRUE)
        / COUNT(*),
        2
    ) AS remote_percentage
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_country
HAVING COUNT(*) >= 500
ORDER BY remote_percentage DESC
LIMIT 20;