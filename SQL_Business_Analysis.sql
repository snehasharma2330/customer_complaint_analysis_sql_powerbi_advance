
USE Customer_Complaint_Analysis;

--Why are customers raising complaints?
SELECT Product,
	COUNT(*) AS num_complaints
FROM Customer_Complaints
GROUP BY Product
ORDER BY num_complaints DESC;

SELECT Issue,
	COUNT(*) AS most_occures
FROM Customer_Complaints
GROUP BY Issue
ORDER BY most_occures DESC;

SELECT TOP 10 Company,
	COUNT(*) AS num_complaints
FROM Customer_Complaints
GROUP BY Company
order by num_complaints DESC;

SELECT YEAR(Date_received) AS Year_Number,
	   MONTH(Date_received) AS Month_Number,
	   COUNT(Complaint_ID) AS num_complaints
	   
FROM Customer_Complaints
GROUP BY YEAR(Date_received),
		 MONTH(Date_received)
		
ORDER BY MONTH_Number,
		Year_Number;


SELECT Product,
	   State,
	   COUNT(*) AS total_complaints
	  
FROM Customer_Complaints
GROUP BY Product,
         State
ORDER BY State,
         total_complaints DESC;

SELECT Company, Product, COUNT(*) AS complaints
FROM Customer_Complaints
GROUP BY Company, Product
ORDER BY complaints DESC;

--Are companies responding effectively?

SELECT COUNT(*) AS total_complaints,
       SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END) AS timely_response,
	   ROUND
	   (100.0 * SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END)/ COUNT(*) ,
	   2) AS timely_response_percent
FROM Customer_Complaints;

 SELECT COMPANY,
        COUNT(*) AS total_complaints,
		SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END) AS timely_response,
		ROUND
		(100.0 * SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS timely_response_rate
FROM Customer_Complaints
GROUP BY Company
HAVING COUNT(*) >=20
ORDER BY timely_response_rate DESC, total_complaints DESC;


 SELECT TOP 10
        Company,
        COUNT(*) AS total_complaints,
		SUM(CASE WHEN [Timely_response] = 'yes' THEN 1 ELSE 0 END) AS timely_response,
		ROUND(
		100.0 * SUM(CASE WHEN [Timely_response] = 'yes' THEN 1 ELSE 0 END)/ COUNT(*) ,2)
		AS timely_response_rate
FROM Customer_Complaints
GROUP BY Company
ORDER BY timely_response_rate DESC, total_complaints DESC;


SELECT Company_public_response,
       COUNT(*) AS response
FROM Customer_Complaints
GROUP BY Company_public_response
ORDER BY response DESC;


SELECT Company,
       COUNT(*) AS total_complaints,
	   SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END) AS timely_response,
	   ROUND(
	   100.0 * SUM(CASE WHEN [Timely_response] = 'Yes' THEN 1 ELSE 0 END)/ COUNT(*),2) AS response_rate
FROM Customer_Complaints
WHERE YEAR(Date_received) = 2017
GROUP BY Company
HAVING COUNT(*) >=20
ORDER BY response_rate ASC, total_complaints ASC;

--Which region requires more attention?

SELECT State,
       COUNT(*) AS num_complaints
FROM Customer_Complaints
GROUP BY State
ORDER BY num_complaints DESC;

SELECT State,
       COUNT(*) AS num_complaint,
	   DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS Rank_distribution
FROM Customer_Complaints
WHERE YEAR(Date_received) = 2017
GROUP BY State;

SELECT YEAR(Date_received) AS Year,
       COUNT(*) AS total_complaint,
	   SUM(COUNT(*)) OVER( ORDER BY YEAR(Date_received)) AS running_total
FROM Customer_Complaints
GROUP BY YEAR(Date_received)
ORDER BY Year;


SELECT Product,
       COUNT(*) AS num_pro_complaints,
	   ROUND(
		COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Customer_Complaints),
		2)
	AS Complaint_contribution_percent
FROM Customer_complaints
GROUP BY Product
ORDER BY Complaint_contribution_percent DESC;


SELECT Product,
       COUNT(*) AS total_complaints
FROM Customer_Complaints
GROUP BY Product
HAVING COUNT(*) 
(
    SELECT AVG(product_count)
    FROM
    (
        SELECT COUNT(*) AS product_count
        FROM Customer_Complaints
        GROUP BY Product
    ) AS avg_table
);


