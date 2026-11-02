# Data Analyst Job Market Analysis Using SQL
## Table of Contents
- [Executive Summary](#1-executive-summary)
- [Project Objective](#2-project-objective)
- [Database Design](#5-database-design)
- [Exploratory Data Analysis](#7-exploratory-data-analysis)
- [Key Findings](#8-key-findings)
- [Recommendations](#10-recommendations)
## 1. Executive Summary
This project analyzes 787,686 job postings using PostgreSQL and SQL to identify patterns in Data Analyst demand, salaries, skills, remote work, geographic distribution, companies, and hiring trends.
The analysis found that Data Analyst is one of the largest job categories in the dataset, with approximately 196,593 postings. SQL was the most frequently requested Data Analyst skill, followed by Exc[...]
Salary patterns varied considerably across job categories, companies, skills, locations, and work arrangements. The analysis also identified substantial geographic differences in job availability and [...]
The project demonstrates how SQL can transform a large relational dataset into practical insights that support career analysis and business decision-making.
________________________________________
## 2. Project Objective
The primary objective was to use SQL to investigate the Data Analyst job market and answer questions about:
- Job demand
- Salary levels
- Required technical skills
- Companies hiring Data Analysts
- Geographic distribution
- Remote opportunities
- Salary differences
- Monthly hiring trends-• Skills associated with salary differences
________________________________________
## 3. Business Questions
The project answers the following questions:
1. Which job categories have the highest demand?
2. Which job categories have the highest median salaries?
3. What are the highest-paying individual job postings?
4. Which skills are most frequently requested?
5. Which skills are most frequently requested for Data Analyst positions?
6. Which Data Analyst skills are associated with higher salaries?
7. Which companies have the most Data Analyst postings?
8. Which countries have the most Data Analyst opportunities?
9. Which countries have the highest proportion of remote Data Analyst postings?
10. How do remote and non-remote Data Analyst salaries compare?
11. How does Data Analyst job demand change over time?
12. How does Data Analyst salary change over time?
________________________________________
## 4. Dataset
The database contains four main relational tables:
Table	Purpose
job_postings_fact	Main job-posting information
company_dim	Company information
skills_dim	Skill information
skills_job_dim	Relationship between jobs and skills
Dataset Size
Table	Records
job_postings_fact	787,686
company_dim	140,033
skills_dim	259
skills_job_dim	3,669,604
The skills_job_dim table acts as a bridge table because a job can require multiple skills and a skill can occur in many job postings.
________________________________________
## 5. Database Design
The relational structure can be represented as:
company_dim
↓
job_postings_fact
↓
skills_job_dim
↓
skills_dim
Primary and foreign keys were used to maintain relationships between the tables.
This design allows analysis such as:
Which skills are required by Data Analyst jobs, and what salaries are associated with those jobs?
________________________________________
## 6. Tools and Technologies
Database
PostgreSQL
Query Language
SQL
Command-Line Interface
psql
Operating Environment
Windows PowerShell
SQL Techniques
The project uses:
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- COUNT
- AVG
- ROUND
- HAVING
- INNER JOIN
- PERCENTILE_CONT
- DATE_TRUNC
- STRING_AGG
- Conditional aggregation
- Filtering
- Data validation
________________________________________
## 7. Exploratory Data Analysis
### 7.1 Job Category Demand
The largest job categories were:
- Data Analyst — 196,593
- Data Engineer — 186,679
- Data Scientist — 172,726
- Business Analyst — 49,160
- Software Engineer — 45,019

Job Category Demand
<img width="984" height="413" alt="image" src="https://github.com/user-attachments/assets/00bf608a-452e-4e06-a3a3-af902670c379" />

This demonstrates substantial demand across data and technology-related roles.
________________________________________
### 7.2 Salary by Job Category
Median annual salaries included:
Job Category	Median Salary
Senior Data Scientist	$155,000
Senior Data Engineer	$147,500
Data Scientist	$127,500
Data Engineer	$125,000
Senior Data Analyst	$111,175
Machine Learning Engineer	$106,000
Software Engineer	$99,150
Data Analyst	$90,000
Cloud Engineer	$90,000
Business Analyst	$85,000
Only postings containing annual salary information were included in this analysis.
________________________________________
### 7.3 Highest Individual Salaries
The analysis identified several unusually high-paying postings, including Data Scientist, Senior Data Scientist, Data Analyst-category, and senior leadership/analytics positions.
These extreme observations demonstrate why median salary is useful for describing a typical salary level.
________________________________________
### 7.4 Most In-Demand Skills
Across the overall dataset, the most frequently appearing skills included:
1. SQL
2. Python
3. AWS
4. Azure
5. R
6. Tableau
7. Excel
8. Spark
9. Power BI
10. Java
SQL and Python were particularly prominent across the job market.
________________________________________
### 7.5 Most In-Demand Data Analyst Skills
The leading Data Analyst skills were:
1. SQL
2. Excel
3. Python
4. Tableau
5. Power BI
6. R
7. SAS
8. PowerPoint
9. Word
10. SAP
SQL appeared in approximately 92,628 Data Analyst postings.
________________________________________
### 7.6 Skills and Salary
When Data Analyst skills were compared using postings with sufficient salary information, some less frequently requested technologies showed relatively high median salaries.
Among commonly occurring skills:
- SQL had the greatest demand.
- Python had a higher median salary association than SQL.
- Tableau and R also showed substantial demand.
- Cloud and data-platform technologies appeared less frequently but showed relatively high salary associations in some cases.
These are associations rather than causal effects. Salary can also reflect seniority, company, location, industry, and job responsibilities.
________________________________________
### 7.7 Company Analysis
Companies and organizations with large numbers of Data Analyst postings included:
- Emprego
- Robert Half
- Insight Global
- Citi
- Dice
- UnitedHealth Group
- Confidenziale
- Get It Recruit - Information Technology
- Michael Page
- Randstad
These figures represent job postings associated with company names in the dataset. They should not be interpreted as employee counts or necessarily as unique vacancies.
________________________________________
### 7.8 Geographic Distribution
The United States had the largest number of Data Analyst postings, followed by several European and Asian markets.
Top countries included:
Country	Data Analyst Postings
United States	67,956
France	13,855
United Kingdom	10,509
Germany	7,141
Singapore	6,642
India	6,133
Spain	5,182
Philippines	4,770
Italy	4,570
Netherlands	4,126
________________________________________
### 7.9 Remote Work
Remote Data Analyst postings were identified across many countries.
Among countries with at least 500 Data Analyst postings, the proportion marked as remote varied considerably.
For example:
- Brazil — 24.34%
- Canada — 21.28%
- India — 17.12%
- Sudan — 15.84%
- Romania — 14.29%
- Philippines — 12.70%
- United Kingdom — 9.06%
- United States — 7.51%
These percentages describe the dataset's postings and should not be interpreted as national workforce-wide remote-work rates.
________________________________________
### 7.10 Remote vs Non-Remote Salary
For Data Analyst postings containing salary information:
Work Arrangement	Average	Median
Remote	$94,770	$87,250
Non-remote	$93,765	$90,000
The average and median produced different comparisons, demonstrating the importance of using multiple measures when examining salary distributions.
________________________________________
### 7.11 Monthly Job Demand
Data Analyst job-posting volume varied throughout 2023.
The highest observed monthly volume was:
January 2023 — 23,697 postings
The lowest complete month in the main 2023 period was:
May 2023 — 13,457 postings
The dataset also contained only 485 Data Analyst postings in December 2022, suggesting that December should be treated as a partial-data period rather than compared directly with complete months.
________________________________________
### 7.12 Monthly Salary Trend
Salary levels were generally stronger around July and August 2023.
The median salary reached approximately:
$95,000 in July and August 2023
Later months showed lower median salary levels.
December 2022 contained only six salary observations and was therefore not suitable for meaningful trend comparison.
________________________________________
## 8. Key Findings
The analysis produced several important findings:
### Finding 1 — Strong Data Analyst Demand
Data Analyst was one of the largest job categories in the dataset, with approximately 196,593 postings.
### Finding 2 — SQL Is Central to Data Analyst Roles
SQL was the most frequently requested Data Analyst skill.
### Finding 3 — Technical Skills Have Different Salary Associations
Skill demand and salary association do not necessarily move together. Some highly demanded skills had lower median salaries than less frequently occurring technologies.
### Finding 4 — Geography Matters
The distribution of Data Analyst opportunities varied substantially between countries.
### Finding 5 — Remote Opportunities Vary
Remote-work availability differed considerably across countries.
### Finding 6 — Salary Measures Tell Different Stories
Average and median salary comparisons can produce different results, particularly when salary distributions contain high-value observations.
### Finding 7 — Job Demand Changes Over Time
The number of Data Analyst postings varied considerably across months during the observed period.
________________________________________
## 9. Career Insights
The findings suggest several practical areas for Data Analyst skill development.
A strong development pathway is:
SQL → Excel → Python → Power BI/Tableau → Statistics → Business Communication
SQL provides a strong foundation for querying and manipulating data.
Python can extend analytical and automation capabilities.
Excel remains useful for business analysis and spreadsheet-based workflows.
Power BI and Tableau support data visualization and dashboard development.
Business communication is essential for converting analytical results into decisions and recommendations.
________________________________________
## 10. Recommendations
For Aspiring Data Analysts
- Develop strong SQL skills.
- Learn Python for data analysis and automation.
- Become proficient in Excel.
- Learn at least one BI/visualization platform.
- Develop statistical and analytical thinking.
- Build practical portfolio projects.
- Practice explaining technical findings in business language.
-or Employers
- Monitor changing skill requirements.
- Evaluate skills in combination rather than individually.
- Consider geographic and remote-work patterns when recruiting.
- Use median salary alongside average salary.
- Improve standardization of job titles, locations, companies, and skills.
________________________________________
## 11. Limitations
Several limitations should be considered.
Salary Coverage
Salary information is available for only a subset of job postings.
Job Posting Representation
A job posting does not necessarily represent a unique vacancy or an actual hire.
Salary Association
The analysis identifies associations between skills and salaries rather than causal relationships.
Company Names
Some company records represent recruiters, staffing firms, job platforms, or generic company names.
Geographic Classification
Location fields are not always standardized. job_country was therefore used for country-level comparisons.
Historical Dataset
The analysis reflects the period represented in the dataset and should not automatically be treated as a description of the current job market.
________________________________________
## 12. Conclusion
This project demonstrates how SQL and PostgreSQL can be used to analyze a large real-world dataset and transform raw job-posting information into meaningful insights.
The analysis examined job demand, salaries, skills, companies, geography, remote work, and time trends. SQL played a central role in connecting multiple relational tables, calculating statistics, iden[...]
The findings highlight the importance of SQL within Data Analyst roles while also demonstrating the value of complementary skills such as Python, Excel, Tableau, Power BI, and R.
More broadly, the project demonstrates the complete analytical workflow:
Raw Data → Database → SQL → EDA → Insights → Recommendations
This provides a practical example of applying SQL not merely as a querying language, but as a tool for solving real-world analytical problems and communicating evidence-based findings.
________________________________________
## 13. SQL Query Files
Each EDA subsection has a matching PostgreSQL query file:

| EDA section | SQL file |
| --- | --- |
| [7.1 Job Category Demand](#71-job-category-demand) | [`eda-7.1-job-category-demand.sql`](eda-7.1-job-category-demand.sql) |
| [7.2 Salary by Job Category](#72-salary-by-job-category) | [`eda-7.2-salary-by-job-category.sql`](eda-7.2-salary-by-job-category.sql) |
| [7.3 Highest Individual Salaries](#73-highest-individual-salaries) | [`eda-7.3-highest-individual-salaries-and-skills.sql`](eda-7.3-highest-individual-salaries-and-skills.sql) |
| [7.4 Most In-Demand Skills](#74-most-in-demand-skills) | [`eda-7.4-most-in-demand-skills-overall.sql`](eda-7.4-most-in-demand-skills-overall.sql) |
| [7.5 Most In-Demand Data Analyst Skills](#75-most-in-demand-data-analyst-skills) | [`eda-7.5-most-in-demand-data-analyst-skills.sql`](eda-7.5-most-in-demand-data-analyst-skills.sql) |
| [7.6 Skills and Salary](#76-skills-and-salary) | [`eda-7.6-data-analyst-skills-and-salaries.sql`](eda-7.6-data-analyst-skills-and-salaries.sql) |
| [7.7 Company Analysis](#77-company-analysis) | [`eda-7.7-data-analyst-postings-by-company.sql`](eda-7.7-data-analyst-postings-by-company.sql) |
| [7.8 Geographic Distribution](#78-geographic-distribution) | [`eda-7.8-data-analyst-postings-by-country.sql`](eda-7.8-data-analyst-postings-by-country.sql) |
| [7.9 Remote Work](#79-remote-work) | [`eda-7.9-remote-data-analyst-jobs-by-country.sql`](eda-7.9-remote-data-analyst-jobs-by-country.sql) |
| [7.10 Remote vs Non-Remote Salary](#710-remote-vs-non-remote-salary) | [`eda-7.10-remote-vs-nonremote-data-analyst-salaries.sql`](eda-7.10-remote-vs-nonremote-data-analyst-salaries.sql) |
| [7.11 Monthly Job Demand](#711-monthly-job-demand) | [`eda-7.11-data-analyst-job-demand-over-time.sql`](eda-7.11-data-analyst-job-demand-over-time.sql) |
| [7.12 Monthly Salary Trend](#712-monthly-salary-trend) | [`eda-7.12-data-analyst-salary-trend-over-time.sql`](eda-7.12-data-analyst-salary-trend-over-time.sql) |

Run the queries against the project database after loading the source data and creating the tables described in [Database Design](#5-database-design). The results depend on the dataset loaded into those tables.

---
## 14. Dashboard
The final dashboard should provide visual summaries of:
- Job category demand
- Data Analyst skill demand
- Salary by job category
- Skill demand vs salary
- Geographic distribution
- Remote-work percentage
- Remote vs non-remote salary
- Monthly job demand
- Monthly salary trends
- Companies with the most Data Analyst postings
The dashboard should allow users to interact with the analysis through filters such as country, company, job category, skill, remote status, and time period.
________________________________________
## 15. Project Skills Demonstrated
This project demonstrates practical experience in:
SQL
- Complex queries
- Joins
- Aggregations
- Filtering
- Statistical calculations
- Date analysis
- Relational database analysis
Data Analysis
- Exploratory data analysis
- Salary analysis
- Demand analysis
- Geographic analysis
- Trend analysis
Data Engineering Fundamentals
- Relational database design
- Primary and foreign keys
- Fact and dimension tables
- Bridge/junction tables
- Data loading and validation
Business Analytics
- Translating data into insights
- Identifying patterns
- Communicating findings
- Making evidence-based recommendations
________________________________________
## 16. Portfolio Project Summary
### Project Title
Data Analyst Job Market Analysis Using SQL
### Tools
PostgreSQL | SQL | psql | PowerShell | Data Visualization
### Dataset
787,686 job postings
### Primary Focus
Data Analyst jobs, skills, salaries, geography, remote work, and hiring trends
### Main Outcome
A complete SQL-based analysis demonstrating how a large relational dataset can be transformed into meaningful career and business insights.
