# Retail Sales Intelligence Dashboard

## Dashboard Overview

### 1. Executive Summary Page
![Retail Sales Intelligence Dashboard](Dashboard_pg1.png)

### 2. Product & Category Performance
![Retail Sales Intelligence Dashboard](Dashboard_pg2.png)

### 3. Customer & Operation Insights
![Retail Sales Intelligence Dashboard](Dashboard_pg3.png)

A data engineering and analytics project that processes raw retail sales data, builds a centralized relational database, and delivers actionable business insights through an interactive Power BI dashboard.

## Project Architecture
The project implements a classic three-stage data pipeline:
1. **Data Cleaning & Transformation (Python / Pandas):** Handled missing values, corrected data types, and normalized transactional data.
2. **Database Storage (PostgreSQL):** Loaded the structured data into a local/cloud PostgreSQL instance for relational querying and data integrity.
3. **Data Visualization (Power BI):** Connected directly to PostgreSQL to build a dimensional model and design a dynamic executive dashboard.

---

## Key Features & Insights Delivered
* **Sales Performance Tracking:** Real-time visibility into Total Revenue, Profit Margins, and Total Units Sold.
* **Trend Analysis:** Month-over-month (MoM) growth tracking to identify seasonal sales spikes and dips.
* **Product & Category Intelligence:** Deep dive into top-performing products and underperforming inventory.
* **Customer Segmentation:** Breakdown of purchasing behavior across demographics and regions to optimize marketing spend.

---

## Tech Stack
* **Language:** Python 3.x
* **Libraries:** Pandas, Seaborn, SQLAlchemy, Psycopg2
* **Database:** PostgreSQL
* **BI Tool:** Power BI Desktop

---
