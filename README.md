# E-Commerce Customer Churn & Retention Analytics

## 📌 Project Overview
This project provides an end-to-end data analytics solution to analyze customer churn for an e-commerce platform. Using Python for data cleaning, SQL for exploratory analysis and segmentation, and Power BI for interactive visualization, this project identifies critical churn drivers and actionable retention strategies.

---

## 🎯 Key Objectives
* Clean and handle missing values, out-of-range records, and inconsistent categorical entries using Python (**Pandas**).
* Execute advanced **SQL queries** to extract key performance indicators (KPIs) and build high-risk customer views.
* Develop an interactive **Power BI Dashboard** to visualize churn distributions and customer segments dynamically.

---

## 🛠️ Tech Stack & Tools
* **Python (Pandas, NumPy)**: Data cleaning, missing value imputation, and category standardization.
* **SQL**: Analytical querying, KPI calculations, risk cohorting, and database views.
* **Power BI**: Data Visualization & Interactive executive dashboard for retention metrics.
* **Excel / CSV**: Raw and processed data storage.

---

## 📊 Dashboard Overview

![E-Commerce Churn Analytics Dashboard](Powerbi Dashboard.png)

---

## 📊 Key Insights & Business Impact
* **Overall Churn Rate**: **16.84%** across 5,630 customer records.
* **Primary Churn Driver**: Customers with unresolved **complaints** have a **31.7%** churn rate compared to **10.9%** for non-complainers.
* **Customer Tenure:** Customers in their first **0–6 months** have the highest churn rate. Retention stabilizes after 12 months.
* **High-Risk Segment**: Low tenure + raised complaint + inactive for >7 days (`DaySinceLastOrder > 7`).
* **Order Behavior:** High shipping distances and specific payment categories correlate strongly with customer drop-offs.

---


## 📂 Repository Structure
```text
├── E Commerce Dataset.xlsx          # Raw Dataset
├── clean_ecommerce_churn.csv        # Processed Dataset
├── churn_analysis.ipynb             # Data Preprocessing Notebook
├── churn_analysis_db.sql            # SQL Queries & Views
├── churn_analysis_Report.pbix       # Power BI Report File
├── Powerbi Dashboard.png            # Dashboard Preview Image
└── README.md                        # Documentation
