# End-to-End SQL Data Warehouse

A modern SQL Server Data Warehouse project that demonstrates the complete ETL (Extract, Transform, Load) lifecycle using the Medallion Architecture (Bronze, Silver, and Gold).

The project consolidates customer, product, and sales data from multiple source systems into a centralized analytical database designed for reporting and business intelligence.

---

## Project Overview

Organizations often maintain data across multiple operational systems such as CRM and ERP. Since these systems are independent, generating reports requires manual data collection and reconciliation.

This project solves that problem by building a centralized SQL Data Warehouse that:

- Imports raw data from multiple source systems
- Cleans and standardizes inconsistent data
- Integrates datasets into a unified model
- Creates business-ready analytical views
- Validates data quality before reporting

---

## Architecture

The warehouse follows the **Medallion Architecture**, which separates data into three logical layers.

```
                Source Systems
        +---------------------------+
        |      CRM      |    ERP    |
        +---------------+-----------+
                       |
                       ▼
                Bronze Layer
          (Raw data from CSV files)
                       |
                       ▼
                Silver Layer
      (Cleaned and standardized data)
                       |
                       ▼
                 Gold Layer
     (Business-ready Star Schema Views)
                       |
                       ▼
          Reporting & Business Analytics
```

---

## Project Structure

```
data_warehousing/

├── datasets/
│   ├── source_crm/
│   └── source_erp/
│
├── docs/
│   ├── requirements.md
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/
│   ├── init_database.sql
│   │
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   └── tests/
│
├── images/
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## Medallion Architecture

### Bronze Layer

Purpose:

- Store source data exactly as received.
- Preserve raw records for auditing and traceability.
- No transformations are applied.

### Silver Layer

Purpose:

- Remove duplicate records.
- Handle missing values.
- Standardize categorical values.
- Clean and validate data.
- Convert data into appropriate formats.

### Gold Layer

Purpose:

- Create business-ready datasets.
- Build a Star Schema.
- Expose analytical views for reporting.

---

## ETL Pipeline

```
CSV Files
     │
     ▼
Bronze Layer
(Raw Data)
     │
     ▼
Silver Layer
(Data Cleaning & Transformation)
     │
     ▼
Gold Layer
(Star Schema Views)
     │
     ▼
Analytics & Reporting
```

---

## Data Sources

### CRM

- Customer Information
- Product Information
- Sales Details

### ERP

- Customer Master
- Customer Location
- Product Categories

---

## Data Model

The Gold Layer follows a **Star Schema** consisting of:

### Dimension Tables

- Customer Dimension
- Product Dimension

### Fact Table

- Sales Fact

This model is optimized for analytical queries and reporting.

---

## Data Quality Checks

Quality validation scripts are implemented to verify:

- Duplicate records
- NULL primary keys
- Invalid dates
- Data consistency
- Standardized values
- Referential integrity

These checks help ensure reliable and trustworthy analytical data.

---

## Technologies Used

| Category | Technology |
|----------|------------|
| Database | SQL Server |
| Language | T-SQL |
| ETL | SQL Stored Procedures |
| Data Source | CSV Files |
| Architecture | Medallion Architecture |
| Data Modeling | Star Schema |
| Version Control | Git & GitHub |

---

## SQL Concepts Demonstrated

This project uses several SQL concepts including:

- Schemas
- Views
- Stored Procedures
- Window Functions
- ROW_NUMBER()
- LEAD()
- CASE Expressions
- JOINS
- BULK INSERT
- Data Validation
- Aggregate Functions
- Common ETL Patterns

---

## Key Learning Outcomes

Through this project, I gained practical experience in:

- Designing a layered data warehouse architecture
- Building ETL pipelines using SQL Server
- Cleaning and transforming real-world datasets
- Implementing a Star Schema for analytics
- Writing reusable SQL stored procedures
- Performing data quality validation
- Organizing SQL projects using industry-standard practices

---

## Future Enhancements

Planned improvements include:

- ETL execution logging
- Error logging and monitoring
- Incremental data loading
- Additional business analytics queries
- Power BI dashboard integration
- Performance optimization for large datasets

---

## License

This project is licensed under the MIT License.

---

## Author

**Mirunalini A. R. A.**

GitHub: **mirunalinibuilds**
