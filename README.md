# 📊 Retail Sales Analytics System

An end-to-end Retail Sales Analytics project demonstrating the complete data analytics workflow—from data cleaning and database design to SQL analysis and interactive Power BI dashboards.

This project was built to strengthen practical skills in Business Intelligence, SQL, Python, database normalization, ETL, and data visualization.

---

## 🚀 Project Overview

The objective of this project was to transform raw retail sales data into meaningful business insights through a structured analytics pipeline.

The project includes:

- Data cleaning using Python
- Database normalization in MySQL
- ETL process for importing cleaned data
- SQL validation and business analysis
- Interactive dashboards in Power BI

---

## 🎯 Project Objectives

- Design a normalized relational database
- Perform data cleaning and validation
- Develop SQL queries for business analysis
- Build interactive Power BI dashboards
- Present actionable business insights

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Python (Pandas) | Data Cleaning & ETL |
| MySQL | Database Design & SQL Analysis |
| Power BI | Dashboard Development |
| Git & GitHub | Version Control |
| CSV | Source Dataset |

---

## 🗄️ Database Design

The database was normalized to improve data integrity and reduce redundancy.

### Tables

- Customer
- Orders
- Product
- Order_Detail

### Relationships

- Customer → Orders (1:M)
- Orders → Order_Detail (1:M)
- Product → Order_Detail (1:M)

---

## 🔄 ETL Process

1. Import raw Superstore dataset
2. Clean inconsistent data using Python
3. Validate missing values and duplicates
4. Import cleaned data into MySQL
5. Normalize the database
6. Validate imported records
7. Build Power BI dashboards

---

## 📊 Dashboard Features

### Executive Overview

- Total Sales KPI
- Total Profit KPI
- Total Orders KPI
- Average Order Value KPI
- Monthly Sales Trend
- Sales by Category
- Sales by Region
- Sales by Customer Segment

Interactive Filters:

- Order Date
- Region
- Category
- Segment

---

### Customer & Product Insights

- Top 10 Customers by Sales
- Top 10 Products by Sales
- Profit by Sub-Category
- Top 10 Profitable Products

---

## 💡 Key Business Insights

The dashboard enables users to:

- Identify best-performing products
- Discover high-value customers
- Compare regional performance
- Analyze customer segments
- Monitor monthly sales trends
- Evaluate product profitability

---

## 📁 Repository Structure

```
Retail-Sales-Analytics-System
│
├── Dashboard
│   └── Retail_Sales_Analytics.pbix
│
├── SQL
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_validation_queries.sql
│   └── 04_business_analysis_queries.sql
│
├── Python
│   └── import_superstore.py
│
├── Database Design
│   ├── ER_Diagram.png
│   └── Database_Schema.png
│
├── Images
│   ├── Dashboard_Page1.png
│   └── Dashboard_Page2.png
│
└── README.md
```

---



## 📚 Skills Demonstrated

- Data Cleaning
- ETL Process
- Database Normalization
- SQL Query Writing
- Data Validation
- Business Analysis
- Data Visualization
- Dashboard Design
- Power BI
- Python
- MySQL
- Git & GitHub

---

## 🌱 Learning Outcomes

Through this project, I gained hands-on experience in building a complete analytics solution from raw data to interactive business dashboards. It strengthened my understanding of data preparation, relational database design, SQL analytics, and business intelligence reporting.

---

## 👩‍💻 Author

**G.C. Parami Ashinsa Hemasiri**

📍 Kandy, Sri Lanka

📧 ashinsaparami2002@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/paramiashinsa/

💼 Portfolio: https://parami2002067.github.io/Portfolio_ParamiAshinsa/

🐙 GitHub: https://github.com/Parami2002067
