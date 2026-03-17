# 3NF Normalization Verification
## Restaurant Equipment & Maintenance System

---

## Reminder: Normalization Rules

- **1NF**: All attributes are atomic (no repeating groups, no multi-valued attributes)
- **2NF**: 1NF + no partial dependencies (non-key attributes depend on the ENTIRE primary key)
- **3NF**: 2NF + no transitive dependencies (non-key attributes depend ONLY on the primary key, not on other non-key attributes)

---

## Verification per Table

### 1. Location (PK: location_id)

| Functional Dependencies |
|---|
| location_id -> name, floor, section, description |

- **1NF**: All attributes are atomic. No repeating groups.
- **2NF**: Single-column PK, so no partial dependencies possible.
- **3NF**: name, floor, section, description all depend directly on location_id. No transitive dependencies.

**Result: Location is in 3NF (and BCNF)**

---

### 2. Supplier (PK: supplier_id)

| Functional Dependencies |
|---|
| supplier_id -> company_name, contact_person, phone, email, address, city, country |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All attributes depend directly on supplier_id. No attribute determines another non-key attribute (city does NOT determine country in this context since we have suppliers from different countries in the same city name).

**Result: Supplier is in 3NF (and BCNF)**

---

### 3. Equipment (PK: equipment_id)

| Functional Dependencies |
|---|
| equipment_id -> name, category, model, manufacturer, serial_number, purchase_date, warranty_end_date, purchase_cost, status, location_id |
| serial_number -> equipment_id (candidate key) |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All non-key attributes depend only on equipment_id. One might argue that `model -> manufacturer`, but in practice different manufacturers can have models with the same name (e.g., "Pro-500"), so model does NOT functionally determine manufacturer.

**Result: Equipment is in 3NF (and BCNF)**

---

### 4. Technician (PK: technician_id)

| Functional Dependencies |
|---|
| technician_id -> first_name, last_name, phone, email, specialization, hire_date, certification_expiry, hourly_rate |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All attributes depend directly on technician_id. specialization does NOT determine hourly_rate (different technicians with the same specialization can have different rates based on experience).

**Result: Technician is in 3NF (and BCNF)**

---

### 5. SparePart (PK: part_id)

| Functional Dependencies |
|---|
| part_id -> name, description, unit_price, stock_quantity, minimum_stock, supplier_id |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All attributes depend directly on part_id. supplier_id is a FK but does NOT determine any other attribute in this table (knowing the supplier doesn't tell you the part's price, stock, etc.).

**Result: SparePart is in 3NF (and BCNF)**

---

### 6. MaintenanceContract (PK: contract_id)

| Functional Dependencies |
|---|
| contract_id -> supplier_id, start_date, end_date, annual_cost, contract_type, terms |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All attributes depend directly on contract_id. contract_type does NOT determine annual_cost or terms (contracts of the same type can have different costs and terms).

**Result: MaintenanceContract is in 3NF (and BCNF)**

---

### 7. Maintenance (PK: maintenance_id)

| Functional Dependencies |
|---|
| maintenance_id -> equipment_id, technician_id, maintenance_type, description, scheduled_date, completion_date, cost, priority, status |

- **1NF**: All atomic.
- **2NF**: Single-column PK.
- **3NF**: All attributes depend directly on maintenance_id. maintenance_type does NOT determine priority (a preventive maintenance can be low or medium priority). status does NOT determine completion_date (multiple completed maintenances have different dates).

**Result: Maintenance is in 3NF (and BCNF)**

---

### 8. PartUsage (PK: usage_id)

| Functional Dependencies |
|---|
| usage_id -> maintenance_id, part_id, quantity_used, unit_cost |

- **1NF**: All atomic.
- **2NF**: Single-column PK (usage_id), so no partial dependencies.
- **3NF**: All attributes depend directly on usage_id. unit_cost is NOT determined by part_id alone (the cost at time of use may differ from current unit_price due to price changes).

**Result: PartUsage is in 3NF (and BCNF)**

---

### 9. EquipmentContract (PK: equipment_id, contract_id)

| Functional Dependencies |
|---|
| (equipment_id, contract_id) -> coverage_details |

- **1NF**: All atomic.
- **2NF**: The only non-key attribute (coverage_details) depends on the ENTIRE composite key (not just equipment_id or contract_id alone — different equipment under the same contract can have different coverage details).
- **3NF**: Only one non-key attribute, so no transitive dependency possible.

**Result: EquipmentContract is in 3NF (and BCNF)**

---

## Summary

| Table | 1NF | 2NF | 3NF | BCNF |
|-------|-----|-----|-----|------|
| Location | Yes | Yes | Yes | Yes |
| Supplier | Yes | Yes | Yes | Yes |
| Equipment | Yes | Yes | Yes | Yes |
| Technician | Yes | Yes | Yes | Yes |
| SparePart | Yes | Yes | Yes | Yes |
| MaintenanceContract | Yes | Yes | Yes | Yes |
| Maintenance | Yes | Yes | Yes | Yes |
| PartUsage | Yes | Yes | Yes | Yes |
| EquipmentContract | Yes | Yes | Yes | Yes |

**All 9 tables are normalized to BCNF (which is stronger than 3NF).**
