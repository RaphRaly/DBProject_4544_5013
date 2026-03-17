# ERD Specification - Restaurant Equipment & Maintenance System
## For reproduction in ERDPlus (erdplus.com)

---

## ENTITIES (7 entity tables)

### 1. Location
- **location_id** (PK) : INT
- name : VARCHAR(100) [NOT NULL]
- floor : INT [DEFAULT 0]
- section : VARCHAR(50)
- description : VARCHAR(255)

### 2. Supplier
- **supplier_id** (PK) : INT
- company_name : VARCHAR(100) [NOT NULL]
- contact_person : VARCHAR(100)
- phone : VARCHAR(20)
- email : VARCHAR(100)
- address : VARCHAR(200)
- city : VARCHAR(50)
- country : VARCHAR(50) [DEFAULT 'Israel']

### 3. Equipment
- **equipment_id** (PK) : INT
- name : VARCHAR(100) [NOT NULL]
- category : VARCHAR(50) [NOT NULL]
- model : VARCHAR(100)
- manufacturer : VARCHAR(100)
- serial_number : VARCHAR(50) [UNIQUE]
- **purchase_date** : DATE [NOT NULL] *(meaningful date 1)*
- **warranty_end_date** : DATE *(meaningful date 2)*
- purchase_cost : NUMERIC(10,2)
- status : VARCHAR(20) [DEFAULT 'Active']

### 4. Technician
- **technician_id** (PK) : INT
- first_name : VARCHAR(50) [NOT NULL]
- last_name : VARCHAR(50) [NOT NULL]
- phone : VARCHAR(20)
- email : VARCHAR(100)
- specialization : VARCHAR(100)
- **hire_date** : DATE [NOT NULL] *(meaningful date 3)*
- **certification_expiry** : DATE *(meaningful date 4)*
- hourly_rate : NUMERIC(8,2)

### 5. SparePart
- **part_id** (PK) : INT
- name : VARCHAR(100) [NOT NULL]
- description : VARCHAR(255)
- unit_price : NUMERIC(10,2)
- stock_quantity : INT [DEFAULT 0]
- minimum_stock : INT [DEFAULT 5]

### 6. MaintenanceContract
- **contract_id** (PK) : INT
- **start_date** : DATE [NOT NULL] *(meaningful date 5)*
- **end_date** : DATE [NOT NULL] *(meaningful date 6)*
- annual_cost : NUMERIC(12,2)
- contract_type : VARCHAR(50)
- terms : VARCHAR(500)

### 7. Maintenance
- **maintenance_id** (PK) : INT
- maintenance_type : VARCHAR(30) [NOT NULL]
- description : VARCHAR(500)
- **scheduled_date** : DATE [NOT NULL] *(meaningful date 7)*
- **completion_date** : DATE *(meaningful date 8)*
- cost : NUMERIC(10,2)
- priority : VARCHAR(10) [DEFAULT 'Medium']
- status : VARCHAR(20) [DEFAULT 'Scheduled']

---

## RELATIONSHIPS

### R1: Equipment — Located_In — Location
- **Type:** Many-to-One (N:1)
- Many equipment can be in one location
- Equipment.location_id -> Location.location_id (FK)
- **Participation:** Equipment: partial (equipment can exist without location) | Location: partial

### R2: Equipment — Undergoes — Maintenance
- **Type:** One-to-Many (1:N)
- One equipment can have many maintenance operations
- Maintenance.equipment_id -> Equipment.equipment_id (FK, NOT NULL)
- **Participation:** Equipment: partial | Maintenance: total (every maintenance must have an equipment)

### R3: Technician — Performs — Maintenance
- **Type:** One-to-Many (1:N)
- One technician can perform many maintenance operations
- Maintenance.technician_id -> Technician.technician_id (FK)
- **Participation:** Technician: partial | Maintenance: partial (can be unassigned)

### R4: Supplier — Supplies — SparePart
- **Type:** One-to-Many (1:N)
- One supplier can supply many spare parts
- SparePart.supplier_id -> Supplier.supplier_id (FK)
- **Participation:** Supplier: partial | SparePart: partial

### R5: Supplier — Signs — MaintenanceContract
- **Type:** One-to-Many (1:N)
- One supplier can have many contracts
- MaintenanceContract.supplier_id -> Supplier.supplier_id (FK, NOT NULL)
- **Participation:** Supplier: partial | MaintenanceContract: total

### R6: Maintenance — Uses — SparePart (via PartUsage)
- **Type:** Many-to-Many (M:N)
- One maintenance can use many parts; one part can be used in many maintenances
- **Relationship table: PartUsage**
  - **usage_id** (PK) : INT
  - maintenance_id (FK) -> Maintenance
  - part_id (FK) -> SparePart
  - quantity_used : INT [NOT NULL]
  - unit_cost : NUMERIC(10,2)

### R7: Equipment — Covered_By — MaintenanceContract (via EquipmentContract)
- **Type:** Many-to-Many (M:N)
- One equipment can be covered by many contracts; one contract can cover many equipment
- **Relationship table: EquipmentContract**
  - **equipment_id** (PK, FK) -> Equipment
  - **contract_id** (PK, FK) -> MaintenanceContract
  - coverage_details : VARCHAR(255)

---

## ERDPlus DRAWING INSTRUCTIONS

### Step 1: Create entities
Draw 7 rectangles for entities: Location, Supplier, Equipment, Technician, SparePart, MaintenanceContract, Maintenance

### Step 2: Add attributes
For each entity, add all attributes listed above. Mark PKs with underline. Mark multi-valued or derived attributes if any.

### Step 3: Add relationships
Draw diamond shapes for each relationship:
1. **Located_In** between Equipment and Location (N:1)
2. **Undergoes** between Equipment and Maintenance (1:N)
3. **Performs** between Technician and Maintenance (1:N)
4. **Supplies** between Supplier and SparePart (1:N)
5. **Signs** between Supplier and MaintenanceContract (1:N)
6. **Uses** between Maintenance and SparePart (M:N) — this creates PartUsage
7. **Covered_By** between Equipment and MaintenanceContract (M:N) — this creates EquipmentContract

### Step 4: Add cardinalities
Mark each relationship line with the correct cardinality (1 or N/M)

### Step 5: Generate DSD
Use ERDPlus "Convert to Relational Schema" to generate the DSD automatically

### Step 6: Generate SQL
Use ERDPlus "Generate SQL" to get createTables.sql (then adjust types and add constraints)

---

## VISUAL LAYOUT SUGGESTION FOR ERDPlus

```
                    [Location]
                        |
                        | N:1 (Located_In)
                        |
[Supplier] ---1:N--- [Equipment] ---1:N--- [Maintenance] ---1:N--- [Technician]
    |                    |                       |
    | 1:N                | M:N                   | M:N
    |                    |                       |
[SparePart]    [MaintenanceContract]        [SparePart]
                                          (via PartUsage)
              (via EquipmentContract)
```

Suggested placement:
- Center: Equipment (the main entity)
- Top: Location
- Left: Supplier, SparePart
- Right: Maintenance, Technician
- Bottom: MaintenanceContract, PartUsage, EquipmentContract
