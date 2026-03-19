# Restaurant Equipment & Maintenance Management System

## Project Report - Stage 1 (שלב א)

**Authors:** Yair Chocron, Refael Sharvit
**Student IDs:** 214895013, 1894544
**System:** Restaurant Management
**Module:** Equipment & Maintenance
**Database:** PostgreSQL

---

## Table of Contents

1. [Introduction](#introduction)
2. [System Description](#system-description)
3. [Screen Design (AI Studio)](#screen-design)
4. [ERD Diagram](#erd-diagram)
5. [DSD Diagram](#dsd-diagram)
6. [Data Structure Description](#data-structure-description)
7. [Design Decisions & Normalization (3NF)](#design-decisions--normalization-3nf)
8. [Data Insertion Methods](#data-insertion-methods)
9. [Backup & Restore](#backup--restore)

---

## Introduction

This database project models the **Equipment & Maintenance** module of a restaurant management system. The system stores and manages data related to restaurant equipment (ovens, refrigerators, dishwashers, ventilation systems, etc.), their physical locations within the restaurant, all maintenance operations performed on them, the spare parts inventory, supplier relationships, technician assignments, and service contracts.

### Main Functionality

- **Equipment tracking**: Register and manage all restaurant equipment from purchase to decommission, including warranty tracking and current status
- **Maintenance scheduling**: Plan and record preventive, corrective, emergency, and inspection maintenance operations
- **Spare parts management**: Track inventory levels, usage during maintenance, and automatic low-stock detection
- **Technician assignment**: Assign qualified technicians to maintenance tasks based on their specialization
- **Supplier management**: Maintain supplier information and track which suppliers provide which parts
- **Service contracts**: Monitor maintenance service agreements, their coverage, and expiration dates
- **Reporting**: Generate reports on maintenance costs, equipment status, parts usage, and technician workload

---

## Screen Design

The system screens were designed using a **Top-Down** approach. We first defined all the screens of the final system using Google AI Studio, creating a complete application mockup (not connected to a database). These screens served as the basis for designing our database tables.

The application contains **9 screens**:

### Screen 1: Login
Split-panel login screen with system branding on the left and authentication form on the right.

![Login Screen](images/Stage1/screen_login.jpg)

### Screen 2: Dashboard
Main dashboard showing key metrics: total equipment count, active/under-repair equipment, critical maintenance alerts, active technicians, low-stock parts, active contracts, and monthly maintenance cost. Also displays a table of recent maintenance operations.

![Dashboard](images/Stage1/screen_dashboard.jpg)

### Screen 3: Equipment Management
Full CRUD interface for managing restaurant equipment. Includes search/filter by category, status, and location. Table displays all equipment attributes including purchase date, warranty end date, cost, and current status. Includes an "Add Equipment" form.

![Equipment](images/Stage1/screen_equipment.jpg)

### Screen 4: Maintenance Management
Interface for managing all maintenance operations. Filter by maintenance type (Preventive/Corrective/Emergency/Inspection), priority, status, and date range. Displays scheduled date, completion date, cost, and assigned technician.

![Maintenance](images/Stage1/screen_maintenance.jpg)

### Screen 5: Technician Management
Manage maintenance technicians with search by name and specialization filter. Displays hire date, certification expiry, hourly rate, and contact information.

<!-- ![Technicians](images/Stage1/screen_technicians.jpg) -->
> *Insert screenshot of Technicians screen here*

### Screen 6: Spare Parts Inventory
Inventory management screen with stock level indicators (In Stock / Low Stock / Out of Stock). Filter by supplier and stock level. Shows unit price, current quantity, minimum stock threshold.

<!-- ![Spare Parts](images/Stage1/screen_spareparts.jpg) -->
> *Insert screenshot of Spare Parts screen here*

### Screen 7: Supplier Management
Manage supplier companies with search by name and city filter. Displays contact person, phone, email, address, and number of parts supplied.

<!-- ![Suppliers](images/Stage1/screen_suppliers.jpg) -->
> *Insert screenshot of Suppliers screen here*

### Screen 8: Maintenance Contracts
Contract management interface showing contract type, start/end dates, annual cost, number of covered equipment, and contract status (Active/Expired).

<!-- ![Contracts](images/Stage1/screen_contracts.jpg) -->
> *Insert screenshot of Contracts screen here*

### Screen 9: Reports & Analytics
Reports dashboard with 6 report types: Maintenance Cost Report, Equipment Status Summary, Parts Usage Report, Technician Workload, Contract Analysis, and Maintenance Schedule. Includes a sample monthly cost summary table.

<!-- ![Reports](images/Stage1/screen_reports.jpg) -->
> *Insert screenshot of Reports screen here*

> **Note**: The complete interactive mockup is available in the file `system_screens.html`. Open it in a browser to navigate between all screens.

---

## ERD Diagram

The database was designed using **ERDPlus** (erdplus.com). The Entity-Relationship Diagram contains **7 entities** and **7 relationships** (including 2 many-to-many relationships that generate 2 additional relationship tables).

<!-- ![ERD Diagram](images/Stage1/ERD.jpg) -->
> *Insert ERD diagram from ERDPlus here*

### Entities (7)

| # | Entity | Description | Key Attributes |
|---|--------|-------------|----------------|
| 1 | **Location** | Physical locations within the restaurant | location_id (PK), name, floor, section |
| 2 | **Supplier** | Companies providing equipment and parts | supplier_id (PK), company_name, phone, email, city |
| 3 | **Equipment** | Restaurant equipment and appliances | equipment_id (PK), name, category, serial_number, purchase_date, warranty_end_date, status |
| 4 | **Technician** | Maintenance staff and repair personnel | technician_id (PK), first_name, last_name, specialization, hire_date, certification_expiry |
| 5 | **SparePart** | Replacement parts inventory | part_id (PK), name, unit_price, stock_quantity, minimum_stock |
| 6 | **MaintenanceContract** | Service agreements with suppliers | contract_id (PK), start_date, end_date, annual_cost, contract_type |
| 7 | **Maintenance** | Maintenance operations on equipment | maintenance_id (PK), maintenance_type, scheduled_date, completion_date, cost, priority, status |

### Relationships (7)

| # | Relationship | Between | Cardinality |
|---|-------------|---------|-------------|
| 1 | Located_In | Equipment - Location | N:1 |
| 2 | Undergoes | Equipment - Maintenance | 1:N |
| 3 | Performs | Technician - Maintenance | 1:N |
| 4 | Supplies | Supplier - SparePart | 1:N |
| 5 | Signs | Supplier - MaintenanceContract | 1:N |
| 6 | Uses | Maintenance - SparePart | **M:N** (via PartUsage) |
| 7 | Covered_By | Equipment - MaintenanceContract | **M:N** (via EquipmentContract) |

### Meaningful DATE Attributes (8 total, minimum required: 2)

1. `Equipment.purchase_date` - When the equipment was purchased
2. `Equipment.warranty_end_date` - When the warranty expires
3. `Technician.hire_date` - When the technician was hired
4. `Technician.certification_expiry` - When the technician's certification expires
5. `Maintenance.scheduled_date` - When the maintenance is scheduled
6. `Maintenance.completion_date` - When the maintenance was actually completed
7. `MaintenanceContract.start_date` - Contract start date
8. `MaintenanceContract.end_date` - Contract end date

---

## DSD Diagram

The DSD (Data Structure Diagram) was generated from the ERD using ERDPlus. It shows the relational schema with all tables, columns, primary keys, and foreign key references.

<!-- ![DSD Diagram](images/Stage1/DSD.jpg) -->
> *Insert DSD diagram from ERDPlus here*

### Resulting Tables (9)

The ERD translates to **9 relational tables**: 7 from entities + 2 from M:N relationships.

```
Location (location_id PK, name, floor, section, description)
    |
    | 1:N
    v
Equipment (equipment_id PK, name, category, model, manufacturer, serial_number,
           purchase_date, warranty_end_date, purchase_cost, status, location_id FK)
    |                                              |
    | 1:N                                          | M:N
    v                                              v
Maintenance (maintenance_id PK, equipment_id FK,   EquipmentContract (equipment_id PK/FK,
             technician_id FK, maintenance_type,                      contract_id PK/FK,
             description, scheduled_date,                             coverage_details)
             completion_date, cost, priority,                         |
             status)                                                  |
    |         |                                    MaintenanceContract (contract_id PK,
    | 1:N     | M:N                                    supplier_id FK, start_date, end_date,
    |         v                                        annual_cost, contract_type, terms)
    |  PartUsage (usage_id PK, maintenance_id FK,
    |             part_id FK, quantity_used,
    |             unit_cost)
    |              |
    v              v
Technician    SparePart (part_id PK, name, description, unit_price,
                         stock_quantity, minimum_stock, supplier_id FK)
                              |
                              | N:1
                              v
                         Supplier (supplier_id PK, company_name, contact_person,
                                   phone, email, address, city, country)
```

---

## Data Structure Description

### Location
| Column | Type | Constraints |
|--------|------|-------------|
| location_id | INT | PRIMARY KEY |
| name | VARCHAR(100) | NOT NULL |
| floor | INT | DEFAULT 0 |
| section | VARCHAR(50) | |
| description | VARCHAR(255) | |

### Supplier
| Column | Type | Constraints |
|--------|------|-------------|
| supplier_id | INT | PRIMARY KEY |
| company_name | VARCHAR(100) | NOT NULL |
| contact_person | VARCHAR(100) | |
| phone | VARCHAR(20) | |
| email | VARCHAR(100) | |
| address | VARCHAR(200) | |
| city | VARCHAR(50) | |
| country | VARCHAR(50) | DEFAULT 'Israel' |

### Equipment
| Column | Type | Constraints |
|--------|------|-------------|
| equipment_id | INT | PRIMARY KEY |
| name | VARCHAR(100) | NOT NULL |
| category | VARCHAR(50) | NOT NULL |
| model | VARCHAR(100) | |
| manufacturer | VARCHAR(100) | |
| serial_number | VARCHAR(50) | UNIQUE |
| purchase_date | DATE | NOT NULL |
| warranty_end_date | DATE | CHECK >= purchase_date |
| purchase_cost | NUMERIC(10,2) | CHECK > 0 |
| status | VARCHAR(20) | DEFAULT 'Active', CHECK IN ('Active','Under Repair','Decommissioned','In Storage') |
| location_id | INT | FK -> Location |

### Technician
| Column | Type | Constraints |
|--------|------|-------------|
| technician_id | INT | PRIMARY KEY |
| first_name | VARCHAR(50) | NOT NULL |
| last_name | VARCHAR(50) | NOT NULL |
| phone | VARCHAR(20) | |
| email | VARCHAR(100) | |
| specialization | VARCHAR(100) | |
| hire_date | DATE | NOT NULL |
| certification_expiry | DATE | CHECK > hire_date |
| hourly_rate | NUMERIC(8,2) | CHECK > 0 |

### SparePart
| Column | Type | Constraints |
|--------|------|-------------|
| part_id | INT | PRIMARY KEY |
| name | VARCHAR(100) | NOT NULL |
| description | VARCHAR(255) | |
| unit_price | NUMERIC(10,2) | CHECK >= 0 |
| stock_quantity | INT | DEFAULT 0, CHECK >= 0 |
| minimum_stock | INT | DEFAULT 5, CHECK >= 0 |
| supplier_id | INT | FK -> Supplier |

### MaintenanceContract
| Column | Type | Constraints |
|--------|------|-------------|
| contract_id | INT | PRIMARY KEY |
| supplier_id | INT | NOT NULL, FK -> Supplier |
| start_date | DATE | NOT NULL |
| end_date | DATE | NOT NULL, CHECK > start_date |
| annual_cost | NUMERIC(12,2) | CHECK > 0 |
| contract_type | VARCHAR(50) | |
| terms | VARCHAR(500) | |

### Maintenance
| Column | Type | Constraints |
|--------|------|-------------|
| maintenance_id | INT | PRIMARY KEY |
| equipment_id | INT | NOT NULL, FK -> Equipment |
| technician_id | INT | FK -> Technician |
| maintenance_type | VARCHAR(30) | NOT NULL, CHECK IN ('Preventive','Corrective','Emergency','Inspection') |
| description | VARCHAR(500) | |
| scheduled_date | DATE | NOT NULL |
| completion_date | DATE | CHECK >= scheduled_date OR NULL |
| cost | NUMERIC(10,2) | |
| priority | VARCHAR(10) | DEFAULT 'Medium', CHECK IN ('Low','Medium','High','Critical') |
| status | VARCHAR(20) | DEFAULT 'Scheduled', CHECK IN ('Scheduled','In Progress','Completed','Cancelled') |

### PartUsage
| Column | Type | Constraints |
|--------|------|-------------|
| usage_id | INT | PRIMARY KEY |
| maintenance_id | INT | NOT NULL, FK -> Maintenance |
| part_id | INT | NOT NULL, FK -> SparePart |
| quantity_used | INT | NOT NULL, CHECK > 0 |
| unit_cost | NUMERIC(10,2) | |

### EquipmentContract
| Column | Type | Constraints |
|--------|------|-------------|
| equipment_id | INT | PK, FK -> Equipment |
| contract_id | INT | PK, FK -> MaintenanceContract |
| coverage_details | VARCHAR(255) | |

---

## Design Decisions & Normalization (3NF)

### Design Decisions

1. **Top-Down approach**: We first designed the application screens to understand what data the system needs, then derived the database schema from those requirements.

2. **8 meaningful DATE fields** (well above the minimum of 2):
   - `Equipment.purchase_date` and `Equipment.warranty_end_date` - equipment lifecycle tracking
   - `Technician.hire_date` and `Technician.certification_expiry` - staff management
   - `Maintenance.scheduled_date` and `Maintenance.completion_date` - operation tracking
   - `MaintenanceContract.start_date` and `MaintenanceContract.end_date` - contract management

3. **Extensive constraints** to ensure data integrity:
   - CHECK constraints on enumerated values (equipment status, maintenance type/priority/status)
   - CHECK constraints on date logic (warranty_end >= purchase_date, completion >= scheduled, end > start)
   - CHECK constraints on positive values (costs, quantities, rates)
   - DEFAULT values for common defaults (status='Active', priority='Medium', country='Israel')
   - NOT NULL on critical fields
   - UNIQUE on serial_number
   - Named constraints for easy identification

4. **Two Many-to-Many relationships** implemented via junction tables:
   - `PartUsage` (Maintenance ↔ SparePart) - tracks which parts were used in which maintenance, with quantity and cost at time of use
   - `EquipmentContract` (Equipment ↔ MaintenanceContract) - tracks which equipment is covered by which contract, with specific coverage details

5. **Separation of concerns**: Each entity represents a distinct real-world concept. No data duplication across tables.

### Normalization Verification (3NF)

All 9 tables were verified to be in **BCNF** (Boyce-Codd Normal Form), which is stronger than the required 3NF.

**Verification method:** For each table, we identified all functional dependencies and verified:
- **1NF**: All attributes are atomic (no repeating groups)
- **2NF**: No partial dependencies (no non-key attribute depends on part of a composite key)
- **3NF**: No transitive dependencies (no non-key attribute depends on another non-key attribute)

| Table | PK | Non-trivial FDs | 3NF? | BCNF? |
|-------|-----|----------------|------|-------|
| Location | location_id | location_id -> all others | Yes | Yes |
| Supplier | supplier_id | supplier_id -> all others | Yes | Yes |
| Equipment | equipment_id | equipment_id -> all others; serial_number -> equipment_id (candidate key) | Yes | Yes |
| Technician | technician_id | technician_id -> all others | Yes | Yes |
| SparePart | part_id | part_id -> all others | Yes | Yes |
| MaintenanceContract | contract_id | contract_id -> all others | Yes | Yes |
| Maintenance | maintenance_id | maintenance_id -> all others | Yes | Yes |
| PartUsage | usage_id | usage_id -> all others | Yes | Yes |
| EquipmentContract | (equipment_id, contract_id) | (equipment_id, contract_id) -> coverage_details | Yes | Yes |

> Full detailed verification available in `3NF_verification.md`

---

## Data Insertion Methods

Each table contains at least **500 records**. Two tables (Maintenance and PartUsage) contain **20,000 records** each. **Total: 43,500 records.**

### Method 1: Python Scripts (Programing/)

Used for the three largest tables:
- **Equipment** (500 rows) - `generate_equipment.py` -> `Equipment_Insert.sql`
- **Maintenance** (20,000 rows) - `generate_maintenance.py` -> `Maintenance_Insert.sql`
- **PartUsage** (20,000 rows) - `generate_part_usage.py` -> `PartUsage_Insert.sql`

> *Insert screenshots of Python script execution here*

### Method 2: Mockaroo (mockarooFiles/)

Used for:
- **Technician** (500 rows) - `Technician.sql`
- **Supplier** (500 rows) - `Supplier.sql`
- **SparePart** (500 rows) - `SparePart.sql`

> *Insert screenshots of Mockaroo configuration here*

### Method 3: Generatedata (generatedataFiles/)

Used for:
- **Location** (500 rows) - `Location.sql`
- **MaintenanceContract** (500 rows) - `MaintenanceContract.sql`
- **EquipmentContract** (500 rows) - `EquipmentContract.sql`

> *Insert screenshots of Generatedata configuration here*

### Data Summary

| Table | Records | Generation Method |
|-------|---------|-------------------|
| Location | 500 | Generatedata |
| Supplier | 500 | Mockaroo |
| Equipment | 500 | Python |
| Technician | 500 | Mockaroo |
| SparePart | 500 | Mockaroo |
| MaintenanceContract | 500 | Generatedata |
| Maintenance | 20,000 | Python |
| PartUsage | 20,000 | Python |
| EquipmentContract | 500 | Generatedata |
| **Total** | **43,500** | |

---

## Backup & Restore

### Backup
The database was backed up using pgAdmin's backup utility (custom format).

> *Insert screenshot of backup process here*

**Backup file:** `backup_2026_03_17.backup`

### Restore
The backup was successfully restored on a different machine to verify data integrity.

> *Insert screenshot of restore process here*

---
