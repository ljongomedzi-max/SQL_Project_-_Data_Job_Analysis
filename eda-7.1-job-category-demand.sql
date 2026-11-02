-- Compare posting volume across job categories.
SELECT
    job_title_short,
    COUNT(*) AS job_postings
FROM job_postings_fact
GROUP BY job_title_short
ORDER BY job_postings DESC;


