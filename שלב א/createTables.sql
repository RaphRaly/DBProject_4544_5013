-- ============================================
-- Restaurant Equipment & Maintenance System
-- createTables.sql
-- ============================================

-- Location: Physical locations within the restaurant
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    floor INT DEFAULT 0,
    section VARCHAR(50),
    description VARCHAR(255)
);

-- Supplier: Companies that provide equipment and spare parts
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    country VARCHAR(50) DEFAULT 'Israel'
);

-- Equipment: Restaurant equipment and appliances
CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    model VARCHAR(100),
    manufacturer VARCHAR(100),
    serial_number VARCHAR(50) UNIQUE,
    purchase_date DATE NOT NULL,
    warranty_end_date DATE,
    purchase_cost NUMERIC(10,2),
    status VARCHAR(20) DEFAULT 'Active',
    location_id INT,
    CONSTRAINT fk_equipment_location FOREIGN KEY (location_id) REFERENCES Location(location_id),
    CONSTRAINT chk_equipment_status CHECK (status IN ('Active', 'Under Repair', 'Decommissioned', 'In Storage')),
    CONSTRAINT chk_equipment_cost CHECK (purchase_cost > 0),
    CONSTRAINT chk_equipment_warranty CHECK (warranty_end_date >= purchase_date)
);

-- Technician: Maintenance staff and external repair personnel
CREATE TABLE Technician (
    technician_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    specialization VARCHAR(100),
    hire_date DATE NOT NULL,
    certification_expiry DATE,
    hourly_rate NUMERIC(8,2),
    CONSTRAINT chk_technician_rate CHECK (hourly_rate > 0),
    CONSTRAINT chk_technician_cert CHECK (certification_expiry > hire_date)
);

-- SparePart: Inventory of replacement parts and consumables
CREATE TABLE SparePart (
    part_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    unit_price NUMERIC(10,2),
    stock_quantity INT DEFAULT 0,
    minimum_stock INT DEFAULT 5,
    supplier_id INT,
    CONSTRAINT fk_part_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
    CONSTRAINT chk_part_price CHECK (unit_price >= 0),
    CONSTRAINT chk_part_stock CHECK (stock_quantity >= 0),
    CONSTRAINT chk_part_min_stock CHECK (minimum_stock >= 0)
);

-- MaintenanceContract: Service agreements with suppliers
CREATE TABLE MaintenanceContract (
    contract_id INT PRIMARY KEY,
    supplier_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    annual_cost NUMERIC(12,2),
    contract_type VARCHAR(50),
    terms VARCHAR(500),
    CONSTRAINT fk_contract_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
    CONSTRAINT chk_contract_cost CHECK (annual_cost > 0),
    CONSTRAINT chk_contract_dates CHECK (end_date > start_date)
);

-- Maintenance: Maintenance operations performed on equipment
CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY,
    equipment_id INT NOT NULL,
    technician_id INT,
    maintenance_type VARCHAR(30) NOT NULL,
    description VARCHAR(500),
    scheduled_date DATE NOT NULL,
    completion_date DATE,
    cost NUMERIC(10,2),
    priority VARCHAR(10) DEFAULT 'Medium',
    status VARCHAR(20) DEFAULT 'Scheduled',
    CONSTRAINT fk_maintenance_equipment FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    CONSTRAINT fk_maintenance_technician FOREIGN KEY (technician_id) REFERENCES Technician(technician_id),
    CONSTRAINT chk_maintenance_type CHECK (maintenance_type IN ('Preventive', 'Corrective', 'Emergency', 'Inspection')),
    CONSTRAINT chk_maintenance_priority CHECK (priority IN ('Low', 'Medium', 'High', 'Critical')),
    CONSTRAINT chk_maintenance_status CHECK (status IN ('Scheduled', 'In Progress', 'Completed', 'Cancelled')),
    CONSTRAINT chk_maintenance_dates CHECK (completion_date >= scheduled_date OR completion_date IS NULL)
);

-- PartUsage: Spare parts consumed during maintenance operations
CREATE TABLE PartUsage (
    usage_id INT PRIMARY KEY,
    maintenance_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_used INT NOT NULL,
    unit_cost NUMERIC(10,2),
    CONSTRAINT fk_usage_maintenance FOREIGN KEY (maintenance_id) REFERENCES Maintenance(maintenance_id),
    CONSTRAINT fk_usage_part FOREIGN KEY (part_id) REFERENCES SparePart(part_id),
    CONSTRAINT chk_usage_quantity CHECK (quantity_used > 0)
);

-- EquipmentContract: Links equipment to maintenance contracts (M:N)
CREATE TABLE EquipmentContract (
    equipment_id INT NOT NULL,
    contract_id INT NOT NULL,
    coverage_details VARCHAR(255),
    PRIMARY KEY (equipment_id, contract_id),
    CONSTRAINT fk_ec_equipment FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    CONSTRAINT fk_ec_contract FOREIGN KEY (contract_id) REFERENCES MaintenanceContract(contract_id)
);
