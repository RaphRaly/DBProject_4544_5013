-- ============================================
-- Restaurant Equipment & Maintenance System
-- createTables.sql
-- ============================================

-- RestaurantArea: Areas/zones within the restaurant
CREATE TABLE RestaurantArea (
    area_id INT PRIMARY KEY,
    area_name VARCHAR(100) NOT NULL
);

-- EquipmentType: Classification of equipment
CREATE TABLE EquipmentType (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL,
    category VARCHAR(50)
);

-- ServiceSupplier: Companies that provide maintenance services and spare parts
CREATE TABLE ServiceSupplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    company VARCHAR(100)
);

-- Technician: Maintenance staff and repair personnel
CREATE TABLE Technician (
    technician_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    specialization VARCHAR(100)
);

-- Equipment: Restaurant equipment and appliances
CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    serial_number VARCHAR(50) UNIQUE,
    purchase_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Active',
    last_service_date DATE,
    type_id INT,
    area_id INT,
    CONSTRAINT fk_equipment_type FOREIGN KEY (type_id) REFERENCES EquipmentType(type_id),
    CONSTRAINT fk_equipment_area FOREIGN KEY (area_id) REFERENCES RestaurantArea(area_id),
    CONSTRAINT chk_equipment_status CHECK (status IN ('Active', 'Under Repair', 'Decommissioned', 'In Storage'))
);

-- SparePart: Inventory of replacement parts
CREATE TABLE SparePart (
    part_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    quantity INT DEFAULT 0,
    cost NUMERIC(10,2),
    supplier_id INT,
    CONSTRAINT fk_part_supplier FOREIGN KEY (supplier_id) REFERENCES ServiceSupplier(supplier_id),
    CONSTRAINT chk_part_quantity CHECK (quantity >= 0),
    CONSTRAINT chk_part_cost CHECK (cost >= 0)
);

-- Maintenance: Maintenance operations performed on equipment
CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY,
    date DATE NOT NULL,
    type VARCHAR(30) NOT NULL,
    cost NUMERIC(10,2),
    notes VARCHAR(500),
    equipment_id INT NOT NULL,
    supplier_id INT,
    CONSTRAINT fk_maintenance_equipment FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    CONSTRAINT fk_maintenance_supplier FOREIGN KEY (supplier_id) REFERENCES ServiceSupplier(supplier_id),
    CONSTRAINT chk_maintenance_type CHECK (type IN ('Preventive', 'Corrective', 'Emergency', 'Inspection'))
);

-- Fault: Equipment faults reported and tracked
CREATE TABLE Fault (
    fault_id INT PRIMARY KEY,
    description VARCHAR(500),
    date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Open',
    severity VARCHAR(10) NOT NULL,
    equipment_id INT NOT NULL,
    technician_id INT,
    CONSTRAINT fk_fault_equipment FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    CONSTRAINT fk_fault_technician FOREIGN KEY (technician_id) REFERENCES Technician(technician_id),
    CONSTRAINT chk_fault_status CHECK (status IN ('Open', 'In Progress', 'Resolved', 'Closed')),
    CONSTRAINT chk_fault_severity CHECK (severity IN ('Low', 'Medium', 'High', 'Critical'))
);

-- Uses: Junction table linking Maintenance to SparePart (M:N)
CREATE TABLE Uses (
    maintenance_id INT NOT NULL,
    part_id INT NOT NULL,
    PRIMARY KEY (maintenance_id, part_id),
    CONSTRAINT fk_uses_maintenance FOREIGN KEY (maintenance_id) REFERENCES Maintenance(maintenance_id),
    CONSTRAINT fk_uses_part FOREIGN KEY (part_id) REFERENCES SparePart(part_id)
);
