# internet-sales-dashboard-from-2012-to-2014

## 🔍 Overview
This project is an end-to-end business intelligence solution developed in **Power BI**. It provides a comprehensive analysis of sales performance, financial tracking against budgets, 
geographic distributions, and customer-product metrics across multiple years (2012–2014). 


![internet-sales-dashboard-from-2012-to-2014](Images/sales Dasboard (2))
---

## 🛠️ Key Features & Dashboard Sections
- **Executive Summary & KPIs:** Track total sales (~22.24M), total orders (58K), Average Order Value (AOV), and Budget vs. Actual variances dynamically
- **Geographic Analysis:** Interactive map visual (`Total Sale by City`) displaying sales penetration across various regions and cities (e.g., France, Netherlands, Denmark, etc.)
- **Temporal Trends:** Monthly and yearly trend lines comparing total sales performance against projected budgets
- **Advanced Filtering:** Global slicers for Year, Product Category, and Product SubCategory to drill down into specific segments instantly
- **Multi-Page Navigation:** Structured layout including a *Landing Page*, *Sales Overview*, *Product Details*, and *Customer Details*

---

## 🏗️ Data Architecture & Modeling
- **Data Prep & Transformation:** Handled data cleaning and modeling directly within Power BI and Power Query.
- **Star Schema Design:** Built utilizing a clean relational model connecting the central fact table (`Fact_Sale`) with dimensional tables (`Dim_Date`, `Dim_Customers`, `Dim_Product`)
- **DAX Measures:** Custom measures and calculated columns written for advanced aggregations, variance calculations, and conditional formatting.

---

## 🚀 Tech Stack & Tools
- **Tool:** Power BI Desktop
- **Language/Query:** DAX, Power Query / M
- **Data Sources:** Structured Sales, Budget, Customer, and Product relational datasets

