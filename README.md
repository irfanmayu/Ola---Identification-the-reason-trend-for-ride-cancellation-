# 🚖 Ola Ride Cancellation & Revenue Analysis

## 📝 Project Overview

This repository contains a comprehensive data analytics project focused on identifying the underlying reasons, operational constraints, and historical trends behind ride cancellations at Ola. Utilizing a massive dataset of over 1 Lakh+ booking records, this case study uncovers actionable insights surrounding booking statuses, driver availability during peak hours, and revenue leakage.

***

## 🛠️ Tech Stack and Workflow

The analysis implements an enterprise level database to reporting workflow:

### 🛢️ First Tier: Database Schemas & Aggregations
* **Tools Used:** SQL, MySQL Workbench
* **Dataset Scale:** 100,000+ Operational Rows
* **Execution:** Engineered clean relational tables to handle heavy ride transaction logs. Developed optimized SQL scripts leveraging Joins, Group By statements, and Window functions to isolate peak cancellation periods and evaluate ride success metrics.

### 📊 Second Tier: Business Intelligence Reporting
* **Tools Used:** Power BI Desktop, DAX Formulas
* **Execution:** Established data pipelines from the local server to design a dynamic multi page dashboard. Developed interactive navigation panels (Overall Metrics, Vehicle Types, Revenue Tracking) and custom DAX measures to cleanly isolate key key performance indicators (KPIs).

***

## 📈 Core Analytical Features Built

* **Ride Volume & Trend Analysis:** Tracked daily and weekly fluctuations in total bookings alongside total booking values across the entire active timeline.

* **Cancellation Breakdown:** Segmented failed bookings to reveal the primary drivers behind cancellations, focusing heavily on issues like driver shortfalls during peak hours.

* **Vehicle Class Performance:** Evaluated revenue generated and booking volume distributions across various transport types including Bikes, Autos, and Sedans.
