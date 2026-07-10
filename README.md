Customer Churn Analysis Project

📌 Project Overview
This project analyzes customer behavior for a telecom company to identify why customers stop using its services (churn), and provides data-driven recommendations to reduce churn. The analysis moves from raw data exploration through SQL analysis, predictive modeling, and an interactive dashboard.
Business Question: What factors drive customers to leave, and how can the company reduce churn?


🎯 Project Goal
Businesses lose significant revenue when customers churn. This project identifies the key drivers of churn using customer account, service, and billing data, and delivers actionable insights to support retention strategy.


🛠️ Tools & Technologies
Excel : Initial data inspection and cleaning
Python (Pandas, NumPy, Matplotlib, Seaborn, scikit-learn) : Exploratory Data Analysis (EDA) and predictive modeling
SQL (PostgreSQL) : Data querying and business-question analysis
Power BI :Interactive dashboard and visualization


📂 Dataset
Source: Telco Customer Churn dataset
Rows: 7,043 customers
Columns: 21 (demographics, account info, subscribed services, and churn status)
Target variable: Churn (Yes/No)


🔍 Key Insights
Overall churn rate: 26.5% (1,869 of 7,043 customers)
Contract type is the strongest churn driver.
Month-to-month customers churn at 42.7%, vs. 11.3% for one-year contracts and just 2.8% for two-year contracts.
Fiber optic internet customers churn the most.
41.9% churn rate, compared to 19% for DSL and 7.4% for customers with no internet service.
Electronic check payers churn far more than other payment methods.
45.3% churn rate vs. ~15–19% for other payment methods.
Churn is heavily front-loaded in the customer lifecycle.
Churned customers have a median tenure of just 10 months, vs. 38 months for retained customers.
Customers without add-on services churn more.
Lack of Online Security, Tech Support, and Online Backup are strong positive predictors of churn (confirmed by logistic regression).
Higher monthly charges correlate with churn.
Median $79.65/month for churned customers vs. $64.43/month for retained customers.


🤖 Predictive Modeling

A logistic regression model was built to predict churn based on customer attributes.
Accuracy: 80%
Top predictors: Contract type, Online Security, Tech Support, Online Backup, Paperless Billing, Dependents, Senior Citizen status
Limitation: Recall for churners is 56% — the model is better at identifying loyal customers than churners, common with imbalanced datasets. Suitable for exploratory insight, not production deployment without further tuning.

📊 Dashboard
An interactive Power BI dashboard was built featuring:
KPI cards: Total Customers, Churn Rate, Revenue Lost to Churn
Churn rate breakdowns by Contract, Internet Service, and Payment Method
Tenure and Monthly Charges distribution by churn status
Interactive filters (slicers) for Contract, Internet Service, Senior Citizen, and Gender
(See /dashboard folder for the .pbix file and exported screenshot)



💡 Business Recommendations
Incentivize longer-term contracts — offer discounts or perks for switching from month-to-month to annual plans, since this is the single biggest churn lever.
Investigate fiber optic service quality/pricing — high churn among fiber customers suggests a pricing or service satisfaction issue worth root-causing.
Bundle support services — proactively offer Online Security and Tech Support to at-risk customers (especially new, month-to-month customers).
Target early-tenure customers — since churn is concentrated in the first year, focus retention campaigns on the first 12 months of the customer lifecycle.
Review the electronic check payment experience — the unusually high churn rate for this payment method warrants further investigation.


📁 Repository Structure
code :
customer-churn-analysis/
│
├── data/
│   └── Telco_Customer_Churn_CLEANED.csv
│
├── notebooks/
│   └── churn_eda_and_modeling.ipynb
│
├── sql/
│   └── churn_queries.sql
│
├── dashboard/
│   ├── churn_dashboard.pbix
│   └── dashboard_screenshot.png
│
├── charts/
│   ├── 1_overall_churn.png
│   ├── 2_churn_by_contract.png
│   ├── 3_churn_by_internet.png
│   ├── 4_churn_by_payment.png
│   ├── 5_tenure_distribution.png
│   └── 6_monthlycharges_distribution.png
│
└── README.md

🚀 How to Reproduce This Analysis?
1. Clone this repository
2. Install dependencies: pip install pandas numpy    matplotlib seaborn scikit-learn
3. Run the Jupyter notebook in /notebooks for EDA
   and modeling
4. Load /sql/churn_queries.sql into PostgreSQL
5.  Open /dashboard/churn_dashboard.pbix in Power     BI Desktop to explore the interactive         dashboard



Simran Shaw
LinkedIn account: https://www.linkedin.com/in/simran-shaw-aa7451362?utm_source=share_via&utm_content=profile&utm_medium=member_android



