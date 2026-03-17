-- ============================================
-- Restaurant Equipment & Maintenance System
-- insertTables.sql
-- Sample data insertion (3 rows per table)
-- Full data is generated via Python, Mockaroo, and Generatedata
-- ============================================

-- Location
INSERT INTO Location (location_id, name, floor, section, description) VALUES (1, 'Main Kitchen', 0, 'A', 'Primary cooking and food preparation area');
INSERT INTO Location (location_id, name, floor, section, description) VALUES (2, 'Cold Storage', -1, 'B', 'Walk-in refrigerators and freezers');
INSERT INTO Location (location_id, name, floor, section, description) VALUES (3, 'Dining Area', 0, 'C', 'Main restaurant floor for customers');

-- Supplier
INSERT INTO Supplier (supplier_id, company_name, contact_person, phone, email, address, city, country) VALUES (1, 'RestaurantEquip Ltd', 'David Cohen', '03-1234567', 'david@restequip.co.il', '15 Herzl St', 'Tel Aviv', 'Israel');
INSERT INTO Supplier (supplier_id, company_name, contact_person, phone, email, address, city, country) VALUES (2, 'CoolTech Solutions', 'Sarah Levi', '02-9876543', 'sarah@cooltech.co.il', '8 Jaffa Rd', 'Jerusalem', 'Israel');
INSERT INTO Supplier (supplier_id, company_name, contact_person, phone, email, address, city, country) VALUES (3, 'ProKitchen Supply', 'Moshe Dayan', '04-5551234', 'moshe@prokitchen.co.il', '22 HaNassi Blvd', 'Haifa', 'Israel');

-- Equipment
INSERT INTO Equipment (equipment_id, name, category, model, manufacturer, serial_number, purchase_date, warranty_end_date, purchase_cost, status, location_id) VALUES (1, 'Industrial Oven', 'Cooking', 'OV-3000X', 'Rational', 'SN-OV-00001', TO_DATE('2022-01-15','YYYY-MM-DD'), TO_DATE('2025-01-15','YYYY-MM-DD'), 15000.00, 'Active', 1);
INSERT INTO Equipment (equipment_id, name, category, model, manufacturer, serial_number, purchase_date, warranty_end_date, purchase_cost, status, location_id) VALUES (2, 'Walk-in Freezer', 'Refrigeration', 'FZ-500', 'Hoshizaki', 'SN-FZ-00002', TO_DATE('2021-06-20','YYYY-MM-DD'), TO_DATE('2024-06-20','YYYY-MM-DD'), 25000.00, 'Active', 2);
INSERT INTO Equipment (equipment_id, name, category, model, manufacturer, serial_number, purchase_date, warranty_end_date, purchase_cost, status, location_id) VALUES (3, 'Commercial Dishwasher', 'Dishwashing', 'DW-200', 'Hobart', 'SN-DW-00003', TO_DATE('2023-03-10','YYYY-MM-DD'), TO_DATE('2026-03-10','YYYY-MM-DD'), 8500.00, 'Active', 1);

-- Technician
INSERT INTO Technician (technician_id, first_name, last_name, phone, email, specialization, hire_date, certification_expiry, hourly_rate) VALUES (1, 'Yossi', 'Mizrahi', '050-1111111', 'yossi.m@techfix.co.il', 'Refrigeration Systems', TO_DATE('2019-03-01','YYYY-MM-DD'), TO_DATE('2026-03-01','YYYY-MM-DD'), 120.00);
INSERT INTO Technician (technician_id, first_name, last_name, phone, email, specialization, hire_date, certification_expiry, hourly_rate) VALUES (2, 'Avi', 'Goldstein', '050-2222222', 'avi.g@techfix.co.il', 'Electrical Systems', TO_DATE('2020-07-15','YYYY-MM-DD'), TO_DATE('2027-07-15','YYYY-MM-DD'), 150.00);
INSERT INTO Technician (technician_id, first_name, last_name, phone, email, specialization, hire_date, certification_expiry, hourly_rate) VALUES (3, 'Noa', 'Ben-David', '050-3333333', 'noa.bd@techfix.co.il', 'General Maintenance', TO_DATE('2021-01-10','YYYY-MM-DD'), TO_DATE('2026-01-10','YYYY-MM-DD'), 100.00);

-- SparePart
INSERT INTO SparePart (part_id, name, description, unit_price, stock_quantity, minimum_stock, supplier_id) VALUES (1, 'Heating Element 3kW', 'Replacement heating element for industrial ovens', 250.00, 15, 5, 1);
INSERT INTO SparePart (part_id, name, description, unit_price, stock_quantity, minimum_stock, supplier_id) VALUES (2, 'Compressor Motor', 'Refrigeration compressor replacement unit', 1200.00, 3, 2, 2);
INSERT INTO SparePart (part_id, name, description, unit_price, stock_quantity, minimum_stock, supplier_id) VALUES (3, 'Water Pump Assembly', 'Dishwasher water circulation pump', 350.00, 8, 3, 3);

-- MaintenanceContract
INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES (1, 1, TO_DATE('2024-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 12000.00, 'Full Service', 'Includes quarterly inspections and all parts');
INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES (2, 2, TO_DATE('2024-06-01','YYYY-MM-DD'), TO_DATE('2025-05-31','YYYY-MM-DD'), 8000.00, 'Parts Only', 'Covers replacement parts, labor billed separately');
INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES (3, 3, TO_DATE('2024-03-15','YYYY-MM-DD'), TO_DATE('2026-03-14','YYYY-MM-DD'), 15000.00, 'Premium', '24/7 emergency support with 4-hour response time');

-- Maintenance
INSERT INTO Maintenance (maintenance_id, equipment_id, technician_id, maintenance_type, description, scheduled_date, completion_date, cost, priority, status) VALUES (1, 1, 1, 'Preventive', 'Quarterly inspection of oven heating elements', TO_DATE('2024-04-01','YYYY-MM-DD'), TO_DATE('2024-04-01','YYYY-MM-DD'), 500.00, 'Medium', 'Completed');
INSERT INTO Maintenance (maintenance_id, equipment_id, technician_id, maintenance_type, description, scheduled_date, completion_date, cost, priority, status) VALUES (2, 2, 2, 'Emergency', 'Freezer compressor failure - urgent repair', TO_DATE('2024-05-12','YYYY-MM-DD'), TO_DATE('2024-05-13','YYYY-MM-DD'), 2500.00, 'Critical', 'Completed');
INSERT INTO Maintenance (maintenance_id, equipment_id, technician_id, maintenance_type, description, scheduled_date, completion_date, cost, priority, status) VALUES (3, 3, 3, 'Corrective', 'Dishwasher water pump replacement', TO_DATE('2024-06-20','YYYY-MM-DD'), NULL, 800.00, 'High', 'Scheduled');

-- PartUsage
INSERT INTO PartUsage (usage_id, maintenance_id, part_id, quantity_used, unit_cost) VALUES (1, 1, 1, 2, 250.00);
INSERT INTO PartUsage (usage_id, maintenance_id, part_id, quantity_used, unit_cost) VALUES (2, 2, 2, 1, 1200.00);
INSERT INTO PartUsage (usage_id, maintenance_id, part_id, quantity_used, unit_cost) VALUES (3, 2, 1, 1, 250.00);

-- EquipmentContract
INSERT INTO EquipmentContract (equipment_id, contract_id, coverage_details) VALUES (1, 1, 'Full coverage including heating elements and electrical components');
INSERT INTO EquipmentContract (equipment_id, contract_id, coverage_details) VALUES (2, 2, 'Compressor and refrigerant system parts coverage');
INSERT INTO EquipmentContract (equipment_id, contract_id, coverage_details) VALUES (3, 3, 'Premium 24/7 support for all dishwashing equipment');
