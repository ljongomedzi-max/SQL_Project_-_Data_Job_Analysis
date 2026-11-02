-- Rank companies by the number of Data Analyst job postings.
SELECT
    c.name AS company_name,
    COUNT(*) AS job_postings
FROM job_postings_fact AS j
INNER JOIN company_dim AS c
    ON j.company_id = c.company_id
WHERE j.job_title_short = 'Data Analyst'
GROUP BY c.name
ORDER BY job_postings DESC
LIMIT 10;