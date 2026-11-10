# internet-sales-dashboard-from-2012-to-2014
# 📊 Sales Analysis Dashboard (Power BI)

[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-00599C?style=for-the-badge&logo=cplusplus&logoColor=white)](https://learn.microsoft.com/en-us/dax/)
[![Data Modeling](https://img.shields.io/badge/Data_Modeling:-Star_Schema-blue?style=for-the-badge)](https://en.wikipedia.org/wiki/Star_schema)

An end-to-end interactive Power BI analytical solution designed to track sales performance, compare key metrics against target budgets, and analyze spatial and temporal purchasing patterns.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Data Architecture & Modeling](#-data-architecture-&-modeling)
- [User Interface & Navigation](#user-interface--navigation)
- [Sales Overview Dashboard](#-sales-overview-dashboard)
- [DAX Measures](#-dax-measures)
- [Getting Started](#-getting-started)
- [Overview](#overview)
- [Data Architecture & Model](#data-model)
- [Navigation & User Interface](#navigation)
- [Sales Overview Dashboard](#sales-overview)
- [DAX Measures](#dax-measures)

---






## 📖 Overview
## <a id="overview"></a>📖 Overview

This business intelligence dashboard empowers stakeholders and analysts to:
- Monitor core Key Performance Indicators (KPIs) such as Total Revenue, Order Volume, and Average Order Value (AOV).
- Evaluate actual performance against projected targets (**Sales vs Budget**) with dynamic variance indicators.
- Analyze geographic distribution of revenue across global cities.
- Filter data dynamically by calendar dates, product categories, and subcategories.

---

## 🏗️ Data Architecture & Modeling
## <a id="data-model"></a>🏗️ Data Architecture & Model


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
## <a id="navigation"></a>🖥️ Navigation & User Interface


A streamlined landing interface provides intuitiveness and fluid navigation across report sections:

![Image Alt](https://github.com/RawanAlali/internet-sales-dashboard-from-2012-to-2014/blob/083d154b173a3c567f3a970b405720022d723fa7/Images/sales%20Dasboard%20(2).jpg)


### Main Navigation Modules:
1. **Landing Page**: Executive hub and workspace introduction.
2. **Sales_Overview**: High-level sales and operational KPIs.
3. **Product_Details**: Deep dive into category performance and inventory metrics.
4. **Customer_Details**: Customer segmentation, retention, and buying behaviors.

---

## 📈 Sales Overview Dashboard
## <a id="sales-overview"></a>📈 Sales Overview Dashboard


The primary analytical workspace consolidates critical business metrics into an interactive canvas:

![Image Alt](https://github.com/RawanAlali/internet-sales-dashboard-from-2012-to-2014/blob/381c967e256485b8a6a91e61f68cc61e5e0d2b56/Images/sales%20Dasboard%20(3).jpg)

### Key Features & Visualizations:
- **Core KPI Cards:**
  - **Total Sale**: `$22.24M`
  - **Total Orders**: `58K`
  - **Average Order Value (AOV)**: `$382.34`
- **Sales vs Budget Performance:** Visual scorecard highlighting total sales versus set targets along with variances ($1.13M  surplus).
- **Geographic Breakdown (Total Sale by City):** Geospatial bubble map displaying sales density across regions.
- **Trend Analysis (Sales vs Budget by Month):** Dual line graph highlighting seasonal performance and monthly target achievement.
- **Dynamic Slicers:** Comprehensive slicer pane supporting filtration by Year (`2012`, `2013`, `2014`), Month, Product Category, and SubCategory.

---
## 👤 Customer Details Dashboard

The Customer Details view provides deep insights into client demographics, individual purchasing behaviors, and high-value customer contributions:

![Customer Details](./Images/sales%20Dasboard%20(4).jpg)

### Key Features & Visualizations:
- **Core KPI Cards:**
  - **Total Sale**: `$22.24M`
  - **Total Orders**: `58K`
  - **Average Order Value (AOV)**: `$382.34`
- **Customer Directory Table:** Granular data table listing individual clients with key attributes including `full_Name`, `Total Sale`, `DateFirstPurchase`, `City`, and `EmailAddress`.
- **Top Performers Ranking (Top 10 SalesAmount by CustomerName):** Horizontal bar chart highlighting the highest-revenue generating customers (led by Jordan Turner, Maurice Shan, and Janet Munoz).
- **Interactive Slicers:** Filter option by `Year`, `Customer_Name`, `Product Category`, `Product SubCategory`, and `Month`.

---

## 📦 Product Details Dashboard

The Product Details workspace delivers actionable analytics on catalog performance, product specs, operational statuses, and pricing structures:

![Product Details](./Images/sales%20Dasboard%20(5).jpg)

### Key Features & Visualizations:
- **Core KPI Cards:**
  - **Total Sale**: `$22.24M`
  - **Total Orders**: `58K`
  - **Average Order Value (AOV)**: `$382.34`
- **Product Inventory & Financial Breakdown:** Detailed table displaying comprehensive product attributes such as `ProductName`, `Total Sale`, `StandardCost`, `Size`, lifecycle `Status` (Current vs Outdate), and `DealerPrice`.
- **Top Products Ranking (Top 10 SalesAmount by ProductName):** Horizontal bar chart sorting the best-selling models, driven heavily by various configurations of the Mountain-200 and Road-250 series.
- **Dynamic Filtering Pane:** Flexible drop-down filters supporting refined views by `Year`, `Product_Name`, `Product Category`, `Product SubCategory`, and `Month`.

## 🧮 DAX Measures
## <a id="dax-measures"></a>🧮 DAX Measures


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

