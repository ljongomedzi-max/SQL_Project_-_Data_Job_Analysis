-- Count Data Analyst postings by the country field.
SELECT
    job_country,
    COUNT(*) AS job_postings
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
    AND job_country IS NOT NULL
GROUP BY job_country
ORDER BY job_postings DESC
LIMIT 10;
