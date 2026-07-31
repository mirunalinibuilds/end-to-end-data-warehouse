/*
===========================================================
Create ETL Logging Schema and Table
===========================================================
Purpose:
Stores execution details for every ETL process.

This table records:

- Layer Loaded
- Procedure Name
- Start Time
- End Time
- Duration
- Status
===========================================================
*/

IF NOT EXISTS (
    SELECT *
    FROM sys.schemas
    WHERE name = 'etl'
)
BEGIN
    EXEC('CREATE SCHEMA etl');
END
GO

IF OBJECT_ID('etl.etl_log','U') IS NOT NULL
DROP TABLE etl.etl_log;
GO

CREATE TABLE etl.etl_log
(
    log_id INT IDENTITY(1,1) PRIMARY KEY,

    layer_name NVARCHAR(30),

    procedure_name NVARCHAR(100),

    start_time DATETIME,

    end_time DATETIME,

    duration_seconds INT,

    status NVARCHAR(20),

    created_at DATETIME2
    DEFAULT GETDATE()
);
GO
