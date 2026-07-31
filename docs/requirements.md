# Data Warehouse Project Requirements

## Project Objective

The objective of this project is to design and implement a modern SQL-based data warehouse that consolidates sales data from multiple business systems into a single, reliable source for reporting and analytics.

The data warehouse follows the Medallion Architecture (Bronze, Silver, and Gold) to ensure data quality, maintainability, and scalability.

---

# Business Requirements

The organization maintains customer, product, and sales information across multiple operational systems. Since these systems are independent, generating reports requires manual data collection and reconciliation, which is time-consuming and error-prone.

The goal of this project is to centralize the data into a unified analytical database that enables consistent reporting and business intelligence.

---

# Functional Requirements

## 1. Data Ingestion

- Import data from CRM and ERP source systems.
- Source data is provided as CSV files.
- Preserve raw data without modification in the Bronze layer.

---

## 2. Data Cleaning

The Silver layer must perform data cleansing operations including:

- Remove duplicate records.
- Handle missing values.
- Trim unwanted spaces.
- Standardize categorical values.
- Validate and convert date formats.
- Correct invalid business values where applicable.

---

## 3. Data Integration

Combine CRM and ERP datasets into a unified analytical model by:

- Matching customers across systems.
- Mapping products to categories.
- Integrating customer, product, and sales information.

---

## 4. Data Modeling

Build a business-friendly Star Schema consisting of:

### Dimension Tables

- Customer Dimension
- Product Dimension

### Fact Table

- Sales Fact

The model should support fast analytical queries.

---

## 5. Reporting Layer

The Gold layer should expose business-ready data through SQL Views.

These views will be used for:

- Business Intelligence
- Dashboards
- Reporting
- Ad-hoc SQL Analysis

---

## 6. Data Quality Validation

Implement validation scripts to verify:

- Duplicate records
- Missing primary keys
- Invalid dates
- Data standardization
- Business rule consistency
- Referential integrity

---

# Non-Functional Requirements

## Performance

- Use SQL Server Bulk Insert for efficient loading.
- Separate ETL stages into Bronze, Silver, and Gold layers.
- Use Views for the Gold layer to simplify reporting.

---

## Maintainability

- Organize SQL scripts into logical folders.
- Use consistent naming conventions.
- Separate DDL, ETL, and validation scripts.

---

## Scalability

The architecture should support:

- Additional source systems
- Larger datasets
- Future ETL enhancements
- Additional reporting requirements

---

# Data Sources

## CRM

- Customer Information
- Product Information
- Sales Details

## ERP

- Customer Master
- Customer Location
- Product Categories

---

# Technology Stack

| Component | Technology |
|-----------|------------|
| Database | SQL Server |
| Query Language | T-SQL |
| ETL | SQL Stored Procedures |
| Data Source | CSV Files |
| Data Modeling | Star Schema |
| Architecture | Medallion Architecture |
| Version Control | Git & GitHub |

---

# Deliverables

- SQL Server Data Warehouse
- Bronze Layer
- Silver Layer
- Gold Layer
- ETL Stored Procedures
- Data Quality Validation Scripts
- Documentation
- GitHub Repository

---

# Project Scope

### Included

- End-to-end SQL Data Warehouse
- ETL Pipeline
- Data Cleansing
- Data Integration
- Data Modeling
- Quality Checks
- Business-ready Views

### Excluded

- Real-time streaming
- Incremental loading
- Slowly Changing Dimensions (SCD Type 2)
- Data orchestration tools (e.g., Airflow, Azure Data Factory)
- BI Dashboard Development

---

# Expected Outcome

The completed project provides a centralized, clean, and business-ready data warehouse that enables analysts and decision-makers to generate reliable insights from customer, product, and sales data.
