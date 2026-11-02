-- Count Data Analyst postings per calendar month.
SELECT
    DATE_TRUNC('month', job_posted_date)::date AS month,
    COUNT(*) AS job_postings
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY DATE_TRUNC('month', job_posted_date)
ORDER BY month;
