-- ============================================
-- Restaurant Equipment & Maintenance System
-- insertTables.sql
-- Master insertion file — populates all tables
-- Calls generated SQL files in dependency-safe order
-- ============================================

-- =====================
-- Independent tables (no foreign key dependencies)
-- =====================

-- RestaurantArea (500 rows) — generated via Generatedata
\i generatedataFiles/RestaurantArea.sql

-- EquipmentType (500 rows) — generated via Generatedata
\i generatedataFiles/EquipmentType.sql

-- ServiceSupplier (500 rows) — generated via Mockaroo
\i mockarooFiles/ServiceSupplier.sql

-- Technician (500 rows) — generated via Mockaroo
\i mockarooFiles/Technician.sql

-- =====================
-- Dependent tables (require parent tables above)
-- =====================

-- Equipment (500 rows) — generated via Python script
-- Depends on: EquipmentType, RestaurantArea
\i Programing/Equipment_Insert.sql

-- SparePart (500 rows) — generated via Mockaroo
-- Depends on: ServiceSupplier
\i mockarooFiles/SparePart.sql

-- =====================
-- Tables with multiple dependencies
-- =====================

-- Maintenance (20,000 rows) — generated via Python script
-- Depends on: Equipment, ServiceSupplier
\i Programing/Maintenance_Insert.sql

-- Fault (20,000 rows) — generated via Python script
-- Depends on: Equipment, Technician
\i Programing/Fault_Insert.sql

-- Uses (500 rows) — generated via Generatedata
-- Depends on: Maintenance, SparePart
\i generatedataFiles/Uses.sql
