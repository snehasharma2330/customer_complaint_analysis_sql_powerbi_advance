USE Customer_Complaint_Analysis;

SELECT TOP 10 *  FROM Customer_Complaints;

SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='Customer_Complaints';
SELECT Complaint_ID,
		COUNT(*) AS duplicate_count
FROM Customer_Complaints
GROUP BY Complaint_ID
HAVING COUNT(*) >1;

SELECT COUNT(*) AS missing_product
FROM Customer_Complaints
WHERE Product IS NULL;

SELECT COUNT(*) AS missing_subproduct
FROM Customer_Complaints
WHERE Sub_product IS NULL;

SELECT COUNT(*) AS missing_subissue
FROM Customer_Complaints
WHERE sub_Issue IS NULL;

SELECT COUNT(*) AS missing_company
FROM Customer_Complaints
WHERE Company IS NULL;

SELECT COUNT(*) AS missing_state
FROM Customer_Complaints
WHERE State IS NULL;

SELECT COUNT(*) AS missing_zipcode
FROM Customer_Complaints
WHERE ZIP_code IS NULL;

SELECT COUNT(*) AS missing_rsponse
FROM Customer_Complaints
WHERE Company_public_response IS NULL OR Company_public_response = ' ' ;

SELECT COUNT(*) AS  missing_date
FROM Customer_Complaints
WHERE Date_received IS NULL;

SELECT COUNT(*) AS missing_datesent
FROM Customer_Complaints
WHERE Date_sent_to_company IS NULL;

UPDATE Customer_Complaints
SET State = 'Unknown'
WHERE State IS NULL;

UPDATE Customer_Complaints
SET ZIP_code = 'Unknown'
WHERE ZIP_code IS NULL;

UPDATE Customer_Complaints
SET Company_public_response = 'NO Public Statement'
WHERE Company_public_response IS NULL;


SELECT DISTINCT Timely_response
FROM Customer_Complaints;

SELECT DISTINCT Consumer_disputed
FROM Customer_Complaints;

SELECT DISTINCT Submitted_via
FROM Customer_Complaints;

SELECT DISTINCT Product
FROM Customer_Complaints
ORDER BY Product;

SELECT DISTINCT Company
FROM Customer_Complaints
ORDER BY Company;

SELECT DISTINCT State
FROM Customer_Complaints
ORDER BY State;

SELECT *
FROM Customer_Complaints
WHERE Company <> LTRIM(RTRIM(Company));


