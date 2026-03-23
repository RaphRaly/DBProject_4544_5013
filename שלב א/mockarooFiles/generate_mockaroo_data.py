"""
Generate SQL files in Mockaroo format (lowercase insert into, individual statements)
for: ServiceSupplier (500), Technician (500), SparePart (500)
New schema aligned to updated ERD.
"""
import random
from datetime import datetime, timedelta

random.seed(789)

def escape_sql(s):
    return s.replace("'", "''")

# --- ServiceSupplier ---
FIRST_NAMES = ['Yossi', 'Avi', 'Noa', 'Tal', 'Lior', 'Maya', 'Dan', 'Oren', 'Shira', 'Eyal',
               'Amit', 'Roni', 'Gil', 'Yael', 'Itai', 'Dina', 'Uri', 'Hila', 'Ido', 'Miri',
               'Alon', 'Gal', 'Noam', 'Liora', 'Shai', 'Tamar', 'Ziv', 'Michal', 'Omer', 'Ruth',
               'Adam', 'Ben', 'Chen', 'Dor', 'Eden', 'Lia', 'Nir', 'Ofir', 'Paz', 'Roi',
               'Tom', 'Yoav', 'Yuval', 'Ariel', 'Elad', 'Keren', 'Naomi', 'Ran', 'Sivan', 'Tomer']

LAST_NAMES = ['Cohen', 'Levi', 'Mizrahi', 'Peretz', 'Goldstein', 'Ben-David', 'Avraham',
              'Friedman', 'Shapira', 'Katz', 'Alon', 'Dahan', 'Azulay', 'Biton', 'Gabay',
              'Hadad', 'Yosef', 'Malka', 'Nahum', 'Ohayon', 'Russo', 'Shalom', 'Tzur',
              'Vaknin', 'Zilberman', 'Bar', 'Chai', 'Elimelech', 'Fischer', 'Golan',
              'Haim', 'Israeli', 'Jacobi', 'Klein', 'Levy', 'Mor', 'Natan', 'Oz', 'Peled', 'Regev']

COMPANY_PREFIXES = ['Pro', 'Elite', 'Premier', 'Global', 'Top', 'Best', 'Quality', 'Super',
                    'Ultra', 'Master', 'Royal', 'Grand', 'Prime', 'Star', 'Gold']
COMPANY_SUFFIXES = ['Kitchen Supply', 'Equipment Co', 'Tech Solutions', 'Systems Ltd',
                    'Parts Direct', 'Industrial', 'Services', 'Trading', 'Import',
                    'Wholesale', 'Distribution', 'Manufacturing', 'Engineering']

with open('ServiceSupplier.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        name = f"{random.choice(FIRST_NAMES)} {random.choice(LAST_NAMES)}"
        phone = f"05{random.randint(0,9)}-{random.randint(1000000,9999999)}"
        company = f"{random.choice(COMPANY_PREFIXES)} {random.choice(COMPANY_SUFFIXES)}"

        f.write(f"insert into ServiceSupplier (supplier_id, name, phone, company) values "
                f"({i}, '{escape_sql(name)}', '{phone}', '{escape_sql(company)}');\n")

print("Generated 500 ServiceSupplier rows -> ServiceSupplier.sql")

# --- Technician ---
SPECIALIZATIONS = ['Refrigeration Systems', 'Electrical Systems', 'General Maintenance',
                   'HVAC and Ventilation', 'Plumbing', 'Gas Systems', 'Fire Safety Equipment',
                   'Kitchen Equipment', 'Dishwashing Systems', 'Cooking Equipment',
                   'Beverage Equipment', 'Food Prep Machinery', 'Safety Systems',
                   'Electronics and POS', 'Exhaust Systems']

with open('Technician.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        name = f"{random.choice(FIRST_NAMES)} {random.choice(LAST_NAMES)}"
        phone = f"05{random.randint(0,9)}-{random.randint(1000000,9999999)}"
        spec = random.choice(SPECIALIZATIONS)

        f.write(f"insert into Technician (technician_id, name, phone, specialization) values "
                f"({i}, '{escape_sql(name)}', '{phone}', '{escape_sql(spec)}');\n")

print("Generated 500 Technician rows -> Technician.sql")

# --- SparePart ---
PART_NAMES = [
    'Heating Element', 'Compressor Motor', 'Water Pump', 'Thermostat', 'Fan Motor',
    'Door Gasket', 'Control Board', 'Ignition Module', 'Gas Valve', 'Pressure Switch',
    'Temperature Sensor', 'Relay Module', 'Capacitor', 'Contactor', 'Timer',
    'Belt Drive', 'Bearing Assembly', 'Seal Kit', 'Filter Cartridge', 'Drain Valve',
    'Solenoid Valve', 'Fuse', 'Circuit Breaker', 'Power Cord', 'Pilot Assembly',
    'Burner Assembly', 'Grate', 'Drip Tray', 'Spray Arm', 'Wash Rack',
    'Evaporator Coil', 'Condenser Coil', 'Expansion Valve', 'Defrost Heater',
    'Ice Mold', 'Water Inlet Valve', 'Float Switch', 'Agitator', 'Blade Assembly',
    'Guard Cover', 'Handle Assembly', 'Hinge Pin', 'Latch Assembly', 'Spring Kit',
    'O-Ring Set', 'Clamp', 'Mounting Bracket', 'Vibration Pad', 'Exhaust Duct', 'Grease Trap'
]

PART_SUFFIXES = ['3kW', '5kW', '1HP', '2HP', '12V', '24V', '120mm', '200mm', 'Standard', 'Pro', 'XL', 'Mini']

NUM_SUPPLIERS = 500

with open('SparePart.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        name = f"{random.choice(PART_NAMES)} {random.choice(PART_SUFFIXES)}"
        quantity = random.randint(0, 100)
        cost = round(random.uniform(5, 2000), 2)
        sup_id = random.randint(1, NUM_SUPPLIERS)

        f.write(f"insert into SparePart (part_id, name, quantity, cost, supplier_id) values "
                f"({i}, '{escape_sql(name)}', {quantity}, {cost}, {sup_id});\n")

print("Generated 500 SparePart rows -> SparePart.sql")
