# 🛒 E-Commerce Customer Churn & Retention Analytics

> **An end-to-end data analytics project using Python, SQL, and Power BI to analyze customer churn, identify risk drivers, and propose actionable retention strategies.**

---

## 📌 Project Overview
Customer churn directly impacts revenue growth in the e-commerce sector. This project provides a full-stack data analytics solution to investigate customer behavior patterns, clean inconsistent dataset records, execute deep analytical SQL queries, and deliver an executive Power BI dashboard for real-time retention insights.

---

## 🎯 Key Objectives
* **Data Cleaning & Standardization:** Impute missing values, fix out-of-range records, and merge duplicate categorical categories using Python (**Pandas**).
* **Exploratory SQL Analysis:** Execute targeted SQL queries to segment customer cohorts, identify churn drivers, and build high-risk analytical views.
* **Interactive Dashboarding:** Build an executive-ready **Power BI Dashboard** to visualize critical KPIs, tenure dynamics, and complaint impact.

---

## 🛠️ Tech Stack & Tools

| Tool / Tech | Usage |
| :--- | :--- |
| **Python (Pandas, NumPy)** | Data preprocessing, median imputation, category mapping |
| **SQL (MySQL / SQL Server)** | KPI calculation, analytical queries, risk cohorting & database views |
| **Power BI** | Data modeling, DAX measures, and interactive KPI dashboarding |
| **Excel / CSV** | Data source handling and storage |

---

## 🚀 Key Features & Workflow
* **Data Cleaning & Standardization:**
  * Cleaned and unified inconsistent categorical values (e.g., merged `'Phone'` → `'Mobile Phone'`, `'CC'` → `'Credit Card'`, `'COD'` → `'Cash on Delivery'`).
  * Managed missing values across numeric columns using Median Imputation to preserve distribution integrity.

* **Feature Engineering:**
  * Created custom binning and grouping features for better segmentation:
    * `Tenure_Group`: Segmented customer relationship length (`0-6 Months`, `6-12 Months`, `1-2 Years`, `2+ Years`).
    * `Distance_Group`: Classified warehouse proximity (`Near (<10km)`, `Medium (10-20km)`, `Far (>20km)`).
    * `Recency_Group`: Categorized days since last order (`0-3 Days`, `4-7 Days`, `8-15 Days`, `15+ Days`).

* **Data Exploration (EDA):**
  * Evaluated overall customer churn rates and distribution.
  * Formatted and exported clean structured data (`clean_ecommerce_churn.csv`) for analytical visualization and model deployment.

---

## 📊 Dataset Summary
* **Total Records:** 5,630 rows × 20 initial features (expanded to 23 with engineered features).
* **Target Variable:** `Churn` (Binary: `1` = Churned, `0` = Retained).
* **Key Features:** `Tenure`, `PreferredLoginDevice`, `CityTier`, `WarehouseToHome`, `PreferredPaymentMode`, `SatisfactionScore`, `Complain`, `DaySinceLastOrder`, `CashbackAmount`.

---

## 📊 Dashboard Preview

![E-Commerce Churn Analytics Dashboard](./Powerbi_Dashboard.png)

---

## 📈 Key Insights & Business Impact
* **Overall Churn Rate:** **16.84%** across 5,630 customer records.
* **Service Complaints:** Unresolved complaints are the #1 churn driver—customers who registered a complaint showed a **31.7%** churn rate versus **10.9%** for non-complainers.
* **Customer Tenure:** Risk is heavily concentrated in the early lifecycle (**0–6 months**). Retention rates stabilize significantly after **12 months**.
* **High-Risk Segment:** Unchurned customers with low tenure, an active complaint, and no recent activity (`DaySinceLastOrder > 7`) represent the highest risk cohort.
* **Logistics & Payments:** Longer shipping distances (`WarehouseToHome`) and specific payment methods strongly correlate with higher customer drop-off.

---

## 📂 Repository Structure

```text
├── E Commerce Dataset.xlsx          # Raw Dataset
├── clean_ecommerce_churn.csv        # Processed Dataset
├── churn_analysis.ipynb             # Data Preprocessing Notebook
├── churn_analysis_db.sql            # SQL Queries & Views
├── churn_analysis_Report.pbix       # Power BI Report File
├── Powerbi_Dashboard.png            # Dashboard Preview Image
└── README.md                        # Documentation
```

---

## 🚀 How to Run / Reproduce
* **Clone the Repository:**
```Bash
https://github.com/shishirsalunkhe/E-Commerce-Customer-Churn-Retention-Analytics.git
```

* **Run Data Preprocessing:**
Open churn_analysis.ipynb in Jupyter Notebook / VS Code and run all cells to generate clean_ecommerce_churn.csv.

* **Execute Database Scripts:**
Import clean_ecommerce_churn.csv into your MySQL/SQL database and execute churn_analysis_db.sql.

* **View Power BI Dashboard:**
Open E_Commerce_Churn_Report.pbix in Power BI Desktop to interact with the visualizations.

---

## 🤝 Contact & Connect
* **Author:** Shishir Salunkhe

* **LinkedIn:** Your LinkedIn Profile

* **GitHub:** @shishirsalunkhe

---

