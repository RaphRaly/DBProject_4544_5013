-- ============================================
-- Restaurant Equipment & Maintenance System
-- insertTables.sql
-- Master insertion file — populates all tables
-- Calls generated SQL files in dependency-safe order
-- ============================================

-- =====================
-- Independent tables (no foreign key dependencies)
-- =====================

-- Location (500 rows) — generated via Generatedata
\i generatedataFiles/Location.sql

-- Supplier (500 rows) — generated via Mockaroo
\i mockarooFiles/Supplier.sql

-- Technician (500 rows) — generated via Mockaroo
\i mockarooFiles/Technician.sql

-- =====================
-- Dependent tables (require parent tables above)
-- =====================

-- Equipment (500 rows) — generated via Python script
-- Depends on: Location
\i Programing/Equipment_Insert.sql

-- SparePart (500 rows) — generated via Mockaroo
-- Depends on: Supplier
\i mockarooFiles/SparePart.sql

-- MaintenanceContract (500 rows) — generated via Generatedata
-- Depends on: Supplier
\i generatedataFiles/MaintenanceContract.sql

-- =====================
-- Tables with multiple dependencies
-- =====================

-- Maintenance (20,000 rows) — generated via Python script
-- Depends on: Equipment, Technician
\i Programing/Maintenance_Insert.sql

-- PartUsage (20,000 rows) — generated via Python script
-- Depends on: Maintenance, SparePart
\i Programing/PartUsage_Insert.sql

-- EquipmentContract (500 rows) — generated via Generatedata
-- Depends on: Equipment, MaintenanceContract
\i generatedataFiles/EquipmentContract.sql
