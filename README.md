# MySQL Task – **SQL for Data Analysis**

## 📌 Overview
This repository contains MySQL scripts and resources for **SQL for Data Analysis** as part of SQL practice.  
The task is performed on a sample `sales_db` database containing two tables:
- `customers`
- `orders`

## 🗂 Files
- **data.sql** → SQL script to create tables and insert sample data.
- **queries.sql** → MySQL queries related to this task.
- **screenshots/** → Folder containing screenshots of query results.
- **README.md** → This documentation file.

## 🗄 Dataset
The database consists of:
**customers**
| customer_id | name     | city         | age |
|-------------|----------|--------------|-----|
| 1           | Alice    | New York     | 30  |
| 2           | Bob      | Chicago      | 45  |
| 3           | Charlie  | Los Angeles  | 28  |
| 4           | David    | New York     | 35  |
| 5           | Eva      | Chicago      | 40  |

**orders**
| order_id | customer_id | product  | quantity | price   | order_date |
|----------|-------------|----------|----------|---------|------------|
| 1        | 1           | Laptop   | 1        | 1200.00 | 2025-08-01 |
| 2        | 1           | Mouse    | 2        | 25.00   | 2025-08-03 |
| 3        | 2           | Keyboard | 1        | 45.00   | 2025-08-02 |
| 4        | 3           | Monitor  | 2        | 200.00  | 2025-08-04 |
| 5        | 4           | Laptop   | 1        | 1150.00 | 2025-08-05 |
| 6        | 5           | Mouse    | 3        | 20.00   | 2025-08-06 |

## ▶️ Steps to Run
1. Open MySQL Workbench (or MySQL CLI).
2. Create and select a database:
   ```sql
3.Run the data.sql script to create tables and insert data.
4.Run the queries.sql file to execute the queries.
5.View the results in MySQL Workbench or CLI.
  
