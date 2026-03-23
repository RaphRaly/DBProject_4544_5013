-- ============================================
-- Restaurant Equipment & Maintenance System
-- dropTables.sql
-- Drop tables in reverse dependency order
-- ============================================

DROP TABLE IF EXISTS Uses CASCADE;
DROP TABLE IF EXISTS Fault CASCADE;
DROP TABLE IF EXISTS Maintenance CASCADE;
DROP TABLE IF EXISTS SparePart CASCADE;
DROP TABLE IF EXISTS Equipment CASCADE;
DROP TABLE IF EXISTS Technician CASCADE;
DROP TABLE IF EXISTS ServiceSupplier CASCADE;
DROP TABLE IF EXISTS EquipmentType CASCADE;
DROP TABLE IF EXISTS RestaurantArea CASCADE;
