SELECT *
FROM data_analyst_jobs;

SELECT COUNT (*)
FROM data_analyst_jobs;

--ANSWER #1
--1793

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--Answer #2
-- ExxonMobil

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY';

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';

--answer to #3a - TN has 21 postings
--answer to #3b - TN and KY have a total of 27 postings

SELECT *
FROM data_analyst_jobs;

SELECT location, star_rating
FROM data_analyst_jobs
WHERE location = 'TN';
	
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;

--answer to #4 - 3

SELECT review_count
FROM data_analyst_jobs
ORDER BY review_count;

	
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;	

--answer to #5 - 151

SELECT *
FROM data_analyst_jobs;

SELECT location
FROM data_analyst_jobs;

SELECT star_rating
FROM data_analyst_jobs;

SELECT AVG(star_rating)
FROM data_analyst_jobs;


SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL and location IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;

--answer to #6 - NE with 4.19

SELECT *
FROM data_analyst_jobs;

SELECT DISTINCT(title)
FROM data_analyst_jobs;

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

--answer to #7 see list and 881 DISTINCT titles
 

SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE location = 'CA';

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

--answer to #8 230 and a list of those companies

SELECT *
FROM data_analyst_jobs;

SELECT company, review_count
FROM data_analyst_jobs
WHERE review_count > 5000;

SELECT company, AVG(star_rating) 
FROM data_analyst_jobs
WHERE review_count > 5000 AND star_rating IS NOT NULL
AND company IS NOT NULL
GROUP BY company	
ORDER BY company;

--answer to #9 b 41

SELECT company, AVG(star_rating) 
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL	
GROUP BY company	
ORDER BY AVG(star_rating) DESC;

SELECT company, ROUND(AVG(star_rating), 2) AS avg_rating
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING SUM(review_count) > 5000
ORDER BY avg_rating DESC;

--answer to #10 Unilever with 4 or Gen Motors. Nike,AMEX,Microsoft, Kaiser

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'
ORDER BY title

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';


--answer to #11 774 DISTINCT 1669 otherwise

SELECT title
FROM data_analyst_jobs
WHERE title; 

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%ANALYST%' 
AND title NOT LIKE '%ANALYTICS%'
AND title NOT LIKE '%Analyst%' 
AND title NOT LIKE '%Analytics%'
AND title NOT LIKE '%analyst%' 
AND title NOT LIKE '%analytics%';

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%' 
AND title NOT ILIKE '%analytics%';

--Answer to # 12- 4. Data Viz/Tableau


SELECT domain, skill, days_since_posting AS hard_to_fill 
FROM data_analyst_jobs
WHERE days_since_posting > 21
AND skill ILIKE '%SQL%' 
AND domain IS NOT NULL
ORDER BY days_since_posting DESC; 

SELECT domain, skill, days_since_posting AS hard_to_fill 
FROM data_analyst_jobs
WHERE days_since_posting > 21
AND skill ILIKE '%SQL%' 
AND domain IS NOT NULL
ORDER BY domain DESC;



SELECT domain,COUNT (title) AS hard_to_fill
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill ILIKE '%SQL%'
AND days_since_posting > 21
GROUP BY domain
ORDER BY hard_to_fill DESC
	
--answer to bonus Internet and Software, Banks and Financial Services, Consulting/Business Services, Healthcare