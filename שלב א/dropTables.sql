-- ============================================
-- Restaurant Equipment & Maintenance System
-- dropTables.sql
-- Drop tables in reverse dependency order
-- ============================================

DROP TABLE IF EXISTS EquipmentContract CASCADE;
DROP TABLE IF EXISTS PartUsage CASCADE;
DROP TABLE IF EXISTS Maintenance CASCADE;
DROP TABLE IF EXISTS MaintenanceContract CASCADE;
DROP TABLE IF EXISTS SparePart CASCADE;
DROP TABLE IF EXISTS Technician CASCADE;
DROP TABLE IF EXISTS Equipment CASCADE;
DROP TABLE IF EXISTS Supplier CASCADE;
DROP TABLE IF EXISTS Location CASCADE;
