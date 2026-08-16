# 📚 Day 7 – Managing Tables (PostgreSQL)

## 📖 Topics Covered

- PostgreSQL Data Types
- CREATE TABLE
- SELECT INTO
- CREATE TABLE AS
- SERIAL
- Identity Columns
- Generated Columns
- ALTER TABLE
- Rename Table
- Add Column
- Drop Column
- Change Column Data Type
- Rename Column
- DROP TABLE
- Temporary Table
- TRUNCATE TABLE
- Copy Table

---

## 🎯 Learning Objectives

After completing this section, you will be able to:

- Create and manage database tables.
- Understand PostgreSQL data types.
- Modify existing tables using `ALTER TABLE`.
- Rename tables and columns.
- Add, remove, and update column definitions.
- Create backup and duplicate tables.
- Use temporary tables for session-based data.
- Remove table data safely using `TRUNCATE`.
- Permanently delete tables using `DROP TABLE`.
- Understand the difference between `CREATE TABLE AS` and `LIKE INCLUDING ALL`.

---

## 📂 Folder Structure

```text
Day_07_Managing_Tables/
│
├── README.md
├── 01_postgresql_data_types.sql
├── 02_create_table.sql
├── 03_select_into.sql
├── 04_create_table_as.sql
├── 05_serial.sql
├── 06_identity_columns.sql
├── 07_generated_columns.sql
├── 08_alter_table.sql
├── 09_rename_table.sql
├── 10_add_column.sql
├── 11_drop_column.sql
├── 12_change_column_data_type.sql
├── 13_rename_column.sql
├── 14_drop_table.sql
├── 15_temporary_table.sql
├── 16_truncate_table.sql
└── 17_copy_table.sql
```

---

## 💡 Key Takeaways

- `ALTER TABLE` is used to modify an existing table.
- `TRUNCATE` removes all rows while keeping the table structure.
- `DROP TABLE` permanently removes the table and its data.
- `CREATE TABLE AS` copies table structure and data.
- `LIKE INCLUDING ALL` copies the table structure, constraints, indexes, and default values, but not the data.
- Temporary tables exist only for the current database session.

---

## 🚀 Author

**Sahrish Dev**  
PostgreSQL Learning Journey 🚀