"""
Generate SQL files in Generatedata batch format (batch INSERT with multiple VALUES per statement)
for: Location (500), MaintenanceContract (500), EquipmentContract (500)
"""
import random
from datetime import datetime, timedelta

random.seed(321)

BATCH_SIZE = 10  # generatedata.com typically does 10 rows per INSERT

def random_date(start_year, end_year):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return start + timedelta(days=random.randint(0, delta))

def escape_sql(s):
    return s.replace("'", "''")

# --- Location (500 rows) ---
LOCATION_NAMES = [
    'Main Kitchen', 'Prep Kitchen', 'Cold Storage Room', 'Dry Storage', 'Walk-in Cooler',
    'Walk-in Freezer', 'Dining Area', 'Private Dining', 'Bar Area', 'Cocktail Bar',
    'Pastry Station', 'Grill Station', 'Fry Station', 'Sushi Station', 'Salad Station',
    'Dishwashing Area', 'Receiving Dock', 'Office', 'Staff Room', 'Restroom Area',
    'Outdoor Patio', 'Rooftop Terrace', 'Wine Cellar', 'Bakery Section', 'Butcher Room',
    'Banquet Hall', 'VIP Lounge', 'Entrance Lobby', 'Coat Check', 'Storage Basement',
    'Utility Room', 'Garbage Area', 'Loading Bay', 'Coffee Station', 'Juice Bar',
    'Service Counter', 'Host Stand', 'Waiting Area', 'Catering Kitchen', 'Training Kitchen'
]

SECTIONS = ['A', 'B', 'C', 'D', 'E', 'F', 'North', 'South', 'East', 'West', 'Central']

DESCRIPTIONS = [
    'Primary work area for food preparation',
    'Secondary preparation and staging area',
    'Temperature-controlled storage space',
    'Dry goods and non-perishable storage',
    'Customer-facing service area',
    'Staff-only operational area',
    'Equipment maintenance access zone',
    'High-traffic operational zone',
    'Climate-controlled environment',
    'Multi-purpose operational space'
]

with open('Location.sql', 'w', encoding='utf-8') as f:
    rows = []
    for i in range(1, 501):
        name = f"{random.choice(LOCATION_NAMES)} {chr(64 + (i % 26) + 1)}"
        floor_num = random.choice([-1, 0, 0, 0, 1, 1, 2])
        section = random.choice(SECTIONS)
        desc = random.choice(DESCRIPTIONS)
        rows.append(f"({i}, '{escape_sql(name)}', {floor_num}, '{section}', '{escape_sql(desc)}')")

        if len(rows) == BATCH_SIZE or i == 500:
            f.write(f"INSERT INTO Location (location_id, name, floor, section, description) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 Location rows (batch format) -> Location.sql")

# --- MaintenanceContract (500 rows) ---
CONTRACT_TYPES = ['Full Service', 'Parts Only', 'Labor Only', 'Premium', 'Basic',
                  'Emergency Only', 'Preventive', 'Annual Inspection', 'Extended Warranty']

TERMS_LIST = [
    'Includes quarterly inspections and all replacement parts',
    'Covers labor costs only, parts billed separately',
    'Parts replacement covered, labor billed at standard rate',
    '24/7 emergency support with 4-hour response time',
    'Basic annual inspection with written report',
    'Emergency callout coverage during business hours only',
    'Preventive maintenance schedule with monthly visits',
    'Annual inspection and certification services',
    'Extended manufacturer warranty with on-site service',
    'Comprehensive coverage including consumables and filters'
]

NUM_SUPPLIERS = 500

with open('MaintenanceContract.sql', 'w', encoding='utf-8') as f:
    rows = []
    for i in range(1, 501):
        sup_id = random.randint(1, NUM_SUPPLIERS)
        start = random_date(2022, 2025)
        duration_years = random.choice([1, 1, 2, 2, 3, 5])
        end = start + timedelta(days=365 * duration_years)
        cost = round(random.uniform(2000, 50000), 2)
        c_type = random.choice(CONTRACT_TYPES)
        terms = random.choice(TERMS_LIST)
        start_str = start.strftime('%Y-%m-%d')
        end_str = end.strftime('%Y-%m-%d')

        rows.append(f"({i}, {sup_id}, TO_DATE('{start_str}','YYYY-MM-DD'), "
                    f"TO_DATE('{end_str}','YYYY-MM-DD'), {cost}, '{escape_sql(c_type)}', "
                    f"'{escape_sql(terms)}')")

        if len(rows) == BATCH_SIZE or i == 500:
            f.write(f"INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, "
                    f"annual_cost, contract_type, terms) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 MaintenanceContract rows (batch format) -> MaintenanceContract.sql")

# --- EquipmentContract (500 rows) ---
NUM_EQUIPMENT = 500
NUM_CONTRACTS = 500

COVERAGE = [
    'Full coverage including all parts and labor',
    'Electrical components and wiring coverage',
    'Mechanical parts and motor coverage',
    'Refrigerant system and compressor coverage',
    'Heating elements and thermostat coverage',
    'Safety systems and fire suppression coverage',
    'Plumbing and water system coverage',
    'Control panel and electronics coverage',
    'Structural components and housing coverage',
    'Consumables and filter replacement coverage'
]

with open('EquipmentContract.sql', 'w', encoding='utf-8') as f:
    used_pairs = set()
    rows = []
    count = 0
    while count < 500:
        eq_id = random.randint(1, NUM_EQUIPMENT)
        ct_id = random.randint(1, NUM_CONTRACTS)
        pair = (eq_id, ct_id)
        if pair in used_pairs:
            continue
        used_pairs.add(pair)
        count += 1
        coverage = random.choice(COVERAGE)
        rows.append(f"({eq_id}, {ct_id}, '{escape_sql(coverage)}')")

        if len(rows) == BATCH_SIZE or count == 500:
            f.write(f"INSERT INTO EquipmentContract (equipment_id, contract_id, coverage_details) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 EquipmentContract rows (batch format) -> EquipmentContract.sql")
