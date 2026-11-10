# internet-sales-dashboard-from-2012-to-2014
# 📊 Sales Analysis Dashboard (Power BI)

[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-00599C?style=for-the-badge&logo=cplusplus&logoColor=white)](https://learn.microsoft.com/en-us/dax/)
[![Data Modeling](https://img.shields.io/badge/Data_Modeling:-Star_Schema-blue?style=for-the-badge)](https://en.wikipedia.org/wiki/Star_schema)

An end-to-end interactive Power BI analytical solution designed to track sales performance, compare key metrics against target budgets, and analyze spatial and temporal purchasing patterns.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Data Architecture & Modeling](#-data-architecture--modeling)
- [User Interface & Navigation](#-user-interface--navigation)
- [Sales Overview Dashboard](#-sales-overview-dashboard)
- [DAX Measures](#-dax-measures)
- [Getting Started](#-getting-started)

---

## 📖 Overview

This business intelligence dashboard empowers stakeholders and analysts to:
- Monitor core Key Performance Indicators (KPIs) such as Total Revenue, Order Volume, and Average Order Value (AOV).
- Evaluate actual performance against projected targets (**Sales vs Budget**) with dynamic variance indicators.
- Analyze geographic distribution of revenue across global cities.
- Filter data dynamically by calendar dates, product categories, and subcategories.

---

## 🏗️ Data Architecture & Modeling

The reporting layer relies on a robust **Star Schema** to optimize query performance and ensure seamless DAX computations:

 ![Image Alt](https://github.com/RawanAlali/internet-sales-dashboard-from-2012-to-2014/blob/083d154b173a3c567f3a970b405720022d723fa7/Images/sales%20Dasboard%20(1).jpg)
 
### Model Components:
- **`Fact_Sale`**: Central fact table storing granular transactional sales records (`SalesAmount`, `ProductKey`, `CustomerKey`, `OrderDateKey`, etc.).
- **`Dim-Customers`**: Customer attributes, demographics, and regional location data.
- **`Dim-Product`**: Product master table containing categories, subcategories, pricing, and specs.
- **`Dim_Date`**: Custom date dimension supporting time-intelligence functions (Years, Quarters, Months).
- **`Budget`**: Targets and expected revenues mapped by timeframe.
- **`measure`**: Dedicated container storing all calculated DAX measures.

---

## 🖥️ User Interface & Navigation

A streamlined landing interface provides intuitiveness and fluid navigation across report sections:

![Landing Page](./image_c6bb3c.png)

### Main Navigation Modules:
1. **Landing Page**: Executive hub and workspace introduction.
2. **Sales_Overview**: High-level sales and operational KPIs.
3. **Product_Details**: Deep dive into category performance and inventory metrics.
4. **Customer_Details**: Customer segmentation, retention, and buying behaviors.

---

## 📈 Sales Overview Dashboard

The primary analytical workspace consolidates critical business metrics into an interactive canvas:

![Sales Overview](./image_c6bb1a.png)

### Key Features & Visualizations:
- **Core KPI Cards:**
  - **Total Sale**: `$22.24M`
  - **Total Orders**: `58K`
  - **Average Order Value (AOV)**: `$382.34`
- **Sales vs Budget Performance:** Visual scorecard highlighting total sales versus set targets along with variances ($1.13M budget surplus).
- **Geographic Breakdown (Total Sale by City):** Geospatial bubble map displaying sales density across regions.
- **Trend Analysis (Sales vs Budget by Month):** Dual line graph highlighting seasonal performance and monthly target achievement.
- **Dynamic Slicers:** Comprehensive slicer pane supporting filtration by Year (`2012`, `2013`, `2014`), Month, Product Category, and SubCategory.

---

## 🧮 DAX Measures

All calculations are structured inside the dedicated `measure` table:

```dax
// Total Revenue Generated
Sales = SUM(Fact_Sale[SalesAmount])

// Target Budget Allocation
budget = SUM(Budget[Budget])

// Variance Analysis (Actual vs Budget)
budget sale = [Sales] - [budget]

// Total Unique Orders
orders = DISTINCTCOUNT(Fact_Sale[SalesOrderNumber])

// Average Order Value (AOV)
Aov = DIVIDE([Sales], [orders], 0)
```

---

## 🚀 Getting Started

1. Clone or download this repository.
2. Ensure image files (`image_c6bb3c.png`, `image_c6bb1a.png`, `2026-11-09 12 53 43.png`) remain in the designated paths for proper rendering.
3. Open the `.pbix` file in **Power BI Desktop**.
4. Refresh the data source connectors if needed, and explore the interactive report!


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

