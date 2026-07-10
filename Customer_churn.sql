drop table Customers


CREATE TABLE Customers 
(customerID           varchar(20)
,gender               varchar(20),
SeniorCitizen        varchar(20),
Partner              varchar(20),
Dependents           varchar(20),
tenure                int,
PhoneService         varchar(20),
MultipleLines        varchar(20),
InternetService      varchar(50),
OnlineSecurity       varchar(50),
OnlineBackup         varchar(50),
DeviceProtection     varchar(50),
TechSupport          varchar(50),
StreamingTV         varchar(50),
StreamingMovies      varchar(50),
Contract             varchar(50),
PaperlessBilling     varchar(50),
PaymentMethod        varchar(50),
MonthlyCharges      numeric(10,2),
TotalCharges        numeric(10,2),
Churn               varchar(50));


select * from customers;

---OVERALL CHURN RATE
SELECT Churn,
COUNT(*) AS total_customers,
      ROUND(COUNT(*)* 100.0 / (SELECT COUNT(*) FROM CUSTOMERS), 2) AS PERCENTAGE
from customers
group by Churn;


---CHURN BY CONTRACT TYPE
SELECT Contract, Churn, COUNT(*) AS total_customers
from customers
group by Contract, Churn
order by Contract;

---CHURN BY CONTRACT TYPE
SELECT PaymentMethod, Churn, COUNT(*) AS total_customers
from customers
group by PaymentMethod, Churn
order by PaymentMethod;

---CHURN BY CONTRACT TYPE
SELECT InternetService, Churn, COUNT(*) AS total_customers
from customers
group by InternetService, Churn
order by InternetService;


---AVERAGE TENURE AND CHARGES BY CHURN
SELECT CHURN,
     AVG(tenure) AS avg_tenure,
	 AVG(MonthlyCharges) as avg_monthly_charges,
	 avg(TotalCharges) AS avg_total_charges
	 from customers
	 group by churn;


---HIGH-VALUE CUSTOMERS WHO CHURNED
SELECT customerID, tenure, MonthlyCharges, TotalCharges
from customers
where Churn = 'Yes'
order by MonthlyCharges DESC
limit 10;


---CHURN RATE BY CONTRACT(as a percentage)
SELECT Contract
  ,count(*) as total_customers,
  sum(case when Churn= 'Yes' then 1 else 0 end) as Churned,
  round(sum(case when Churn= 'Yes' then 1 else 0 end)* 100.0/ count(*), 2) as percentage
  from customers
  group by Contract;

---CHURN RATE BY InternetService(as a percentage)
SELECT InternetService
  ,count(*) as total_customers,
  sum(case when Churn= 'Yes' then 1 else 0 end) as Churned,
  round(sum(case when Churn= 'Yes' then 1 else 0 end)* 100.0/ count(*), 2) as percentage
  from customers
  group by InternetService;

---CHURN RATE BY TechSupport(as a percentage)
SELECT TechSupport
  ,count(*) as total_customers,
  sum(case when Churn= 'Yes' then 1 else 0 end) as Churned,
  round(sum(case when Churn= 'Yes' then 1 else 0 end)* 100.0/ count(*), 2) as percentage
  from customers
  group by TechSupport;




  