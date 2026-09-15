
CUSTOMER COMPLAINT ANALYSIS

## PROJECT OVERVIEW
### This project analyzes consumer complaints against financial companies to identify customer issues, evaluate company response performance and uncover complaint trends across products, companies and states.
The analysis was performed using **Microsoft SQL Server** for data cleaning and business analysis, and **Power BI**  for interactive visualizations.
---
## BUSINESS PROBLEMS
### 1. Why are customers raising complaints?
### •	Identify products with the highest complaints.
### •	Discover the most common complaint issues.
### •	Find companies receiving the most complaints.
### •	Analyze complaint trend over time.
### 2.  Are companies responding efficiently?
### •	Measure timely response rate?
### •	Compare company timely response performance.
### •	Analyze company responses to customers.
### •	Evaluate complaint submission channels.
### 3. Which regions require more attention?
### •	Identify states with the highest complaint volume.
### •	Compare complaint distribution across the United States.
---

## Tools used
### •	SQL Server
### •	Power BI
---

## Dataset Overview
<img width="1105" height="551" alt="image" src="https://github.com/user-attachments/assets/7df1af54-0622-4573-8c81-52a0ae9ed50e" />
<img width="1121" height="601" alt="image" src="https://github.com/user-attachments/assets/3e700718-b4f1-4f2a-928c-77913d712ac9" />


The dataset contains customer complaints related to financial products such as mortgages, credit cards, bank accounts, loans, debt collection and more.

## DATA CLEANING (SQL SERVER)
### The following data quality checks were performed: -
### •	Checked duplicate Complaint IDs 
### (using filter in group by having count >1)
### •	Checked missing values
### (reviewed in each columns using IS NULL ())
### •	Replaced missing State with **Unknown**
### •	Replaced missing ZIP Codes with **Unknown**
### •	Replaced missing Company Public Response with **No Public Response**
### •	Retained missing values in Sub-product and Sub-issue were appropriate
### •	Removed leading/trailing spaces
### •	Standardized categorical values 
### (using DISTINCT ())
## excel
### •	Validate DATE fields
### (using TEXT TO COLUMNS to change into date format)
---

## SQL BUSINESS ANALYSIS
### Measure taken to solve the business problem such as:
### •	Which products receive the most complaints?
### •	Which issue occur most frequently?
### •	Top 10 companies by complaint volume
### •	Complaint trend by year and month
### •	Complaint distribution by state
### •	Percentage of timely responses by company
### •	Complaint submission channel analysis
### •	Companies with the best response performance
### •	State-wises complaint ranking

---



## POWER BI DASHBOARD
### COMPLAINT OVERVIEW
## KPI Cards
•	Total Complaints
•	Total Products
•	Total Companies
•	Response in Progress
### Visualizations
•	Complaints by product
•	Top 10 Companies by complaint
•	Top Issues
•	Complaint Trend by Year and Month
•	Complaint Distribution by State
### Interactive Filters
•	Date received
•	Submitted via
---

## SERVICE PERFORMANCE
### KPI Cards
•	Timely Response%
•	Customer Dispute %
•	Total Companies
•	
### Visualizations
•	Complaint Submission Channel Distribution
•	Company Response Distribution to Customers
•	Quarterly Complaint Response Trend
•	Timely Response by Company

### Interactive Filters
•	Date Received
•	Submitted via
•	Company
---

## Dashboard Preview

<img width="1017" height="582" alt="image" src="https://github.com/user-attachments/assets/5e6d68c5-2640-44fd-9750-2516b5395141" />
<img width="1022" height="583" alt="image" src="https://github.com/user-attachments/assets/2d641abc-be1f-4988-81c9-45387615c000" />


## KEY INSIGHTS
-	Mortgage and Debt Collection generated the highest number of complaints.
-	Most complaints were submitted through Web.
-	Overall Timely Response was 97.20% indicating efficient response.
-	Complaints volumes increased significantly from Oct 2015 to Jan 2017 and quite decline in May 2017 around 3000 number of complaints which shows the improvement by companies over time.
-	The data indicated that more complaints received in CA State around 1,11,765 and TX 60400 and varied considerably across states.
-	Most complaints received by BANK OF AMERICA, NATIONAL ASSOCIATION (66314) however most complaints were still responded timely around 97.64% and rest was in progress.
-	Most complaints had common issues like Loan servicing, payments, incorrect information on credit report.
-	However, the customer dispute rate was 19.07% Indicating that timely response do not always result in satisfactory resolutions.
-	And Quarterly complaint volumes were decreasing overtime. 
---

## RECOMMENDATIONS
-	Prioritize improvements for products with the highest complaint volumes.
-	Investigating recurring complaint issues to reduce customer dissatisfaction.
-	Maintain hight timely response rates across all companies and look up for dispute complaints with proper disclosure.
-	 Improve customer communication for complaints that remain unresolved.
-	Focus on customer support resources on high complaint states such as CA.
-	Monitor complaint trends regularly to identify emerging issues early.   

### Author - Sneha Sharma
LinkedIn: https://www.linkedin.com/in/12sneha-sharma/
