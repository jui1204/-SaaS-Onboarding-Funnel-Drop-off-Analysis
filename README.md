# -SaaS-Onboarding-Funnel-Drop-off-Analysis
End-to-end analysis of a SaaS user onboarding funnel to identify conversion bottlenecks and user drop-offs using SQL, Python, and Power BI. The project focuses on measuring stage-wise conversion rates, drop-off percentages, and overall funnel efficiency, and presents actionable insights through an interactive business dashboard.


# SaaS User Onboarding Funnel Analytics

## 📌 Project Overview

This project performs an end-to-end analysis of a SaaS product's user onboarding funnel to understand how users move through different stages of the product journey and where the highest drop-offs occur.

The goal is to identify conversion bottlenecks, quantify user loss at each stage, and provide data-driven insights that can help improve product onboarding and increase paid user conversions.

The project is implemented using SQL for data analysis, Python for data processing and visualization, and Power BI for building an interactive business dashboard.

---

## 🎯 Business Objective

To analyze user behavior across the onboarding funnel and answer the following business questions:

* How many users reach each stage of the funnel?
* At which stage do most users drop off?
* What is the overall visitor-to-paid conversion rate?
* How efficient is the onboarding funnel?
* How many potential customers are lost before monetization?

---

## 🧩 Funnel Stages Modeled

The funnel consists of the following stages:

1. Homepage Visit
2. Product Page View
3. Signup / Cart
4. Checkout / Verification
5. Paid Subscription (Purchase)

These stages are mapped to represent a typical SaaS onboarding and conversion journey.

---

## 🛠 Tools & Technologies Used

* SQL (SQLite) – Funnel queries, conversion rates, drop-off analysis
* Python (Pandas, Matplotlib) – Data cleaning, transformation, funnel calculations
* Power BI – Interactive dashboard and KPI visualization
* Git & GitHub – Version control and project hosting

---

## 📊 Key Metrics Analyzed

* Users per funnel stage
* Stage-wise conversion rate
* Stage-wise drop-off percentage
* Total users lost before payment
* Overall visitor-to-paid conversion rate
* Funnel efficiency percentage

---

## 📈 Dashboard Features (Power BI)

The dashboard includes:

* KPI Cards:

  * Total Visitors
  * Paid Users
  * Users Lost
  * Visitor → Paid Conversion Rate

* Visualizations:

  * Funnel Chart – User flow through stages
  * Conversion Rate by Stage (Line Chart)
  * Drop-off Percentage by Stage (Bar Chart)
  * User Distribution by Stage (Donut Chart)

The dashboard allows quick identification of funnel bottlenecks and overall product performance.

---

## 🔍 Key Insights

* A significant percentage of users drop off after the product page stage.
* Less than 1% of total visitors convert into paid users, indicating high funnel leakage.
* The largest user loss occurs before checkout, suggesting onboarding or signup friction.
* Improving early-stage onboarding can have the highest impact on revenue growth.

---

## 💡 Business Recommendations

* Simplify the signup process to reduce friction between product view and registration.
* Improve onboarding guidance for first-time users.
* Optimize checkout and verification steps to reduce abandonment.
* Introduce targeted nudges or email reminders for users who drop after signup.
* A/B test onboarding flows to improve early-stage engagement.

---

## 📁 Project Structure

```
saas-user-onboarding-funnel-analytics/
│
├── data/
│   ├── user_data.csv
│   └── funnel_output.csv
│
├── jupyter notebook/
│   └──SaaS funnel_analysis.ipynb
│
├── sql/
│   └── funnel_queries.sql
│
├── dashboard/
│   └── saas_funnel_dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

## 🚀 How to Run This Project

1. Load the dataset from the `data/` folder.
2. Run the Python notebook in `notebooks/` to generate funnel metrics.
3. Execute SQL queries from `sql/funnel_queries.sql` using SQLite.
4. Open the Power BI file from `dashboard/` to view the interactive dashboard.

---

## 👤 Author

Jui Bhanushali
Data Analyst 

---

## 📬 Contact

GitHub: https://github.com/jui1204
LinkedIn: https://www.linkedin.com/in/jui-bhanushali-834008287/
E-mail: bhanushalijui1@gmail.com

---

## ⭐ If you found this project useful

Feel free to star the repository or provide feedback 🙂

