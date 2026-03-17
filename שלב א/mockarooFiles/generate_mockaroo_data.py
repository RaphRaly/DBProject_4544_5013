"""
Generate SQL files in Mockaroo format (lowercase insert into, individual statements)
for: Technician (500), Supplier (500), SparePart (500)
"""
import random
from datetime import datetime, timedelta

random.seed(789)

def random_date(start_year, end_year):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return start + timedelta(days=random.randint(0, delta))

def escape_sql(s):
    return s.replace("'", "''")

# --- Technician ---
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

SPECIALIZATIONS = ['Refrigeration Systems', 'Electrical Systems', 'General Maintenance',
                   'HVAC and Ventilation', 'Plumbing', 'Gas Systems', 'Fire Safety Equipment',
                   'Kitchen Equipment', 'Dishwashing Systems', 'Cooking Equipment',
                   'Beverage Equipment', 'Food Prep Machinery', 'Safety Systems',
                   'Electronics and POS', 'Exhaust Systems']

with open('Technician.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        fn = random.choice(FIRST_NAMES)
        ln = random.choice(LAST_NAMES)
        phone = f"05{random.randint(0,9)}-{random.randint(1000000,9999999)}"
        email = f"{fn.lower()}.{ln.lower().replace('-','')}@{'gmail.com' if random.random() > 0.5 else 'techfix.co.il'}"
        spec = random.choice(SPECIALIZATIONS)
        hire = random_date(2015, 2024)
        cert_years = random.choice([2, 3, 5])
        cert_exp = hire + timedelta(days=365 * cert_years)
        rate = round(random.uniform(80, 250), 2)
        hire_str = hire.strftime('%Y-%m-%d')
        cert_str = cert_exp.strftime('%Y-%m-%d')

        f.write(f"insert into Technician (technician_id, first_name, last_name, phone, email, "
                f"specialization, hire_date, certification_expiry, hourly_rate) values "
                f"({i}, '{escape_sql(fn)}', '{escape_sql(ln)}', '{phone}', '{escape_sql(email)}', "
                f"'{escape_sql(spec)}', TO_DATE('{hire_str}','YYYY-MM-DD'), "
                f"TO_DATE('{cert_str}','YYYY-MM-DD'), {rate});\n")

print("Generated 500 Technician rows -> Technician.sql")

# --- Supplier ---
COMPANY_PREFIXES = ['Pro', 'Elite', 'Premier', 'Global', 'Top', 'Best', 'Quality', 'Super',
                    'Ultra', 'Master', 'Royal', 'Grand', 'Prime', 'Star', 'Gold']
COMPANY_SUFFIXES = ['Kitchen Supply', 'Equipment Co', 'Tech Solutions', 'Systems Ltd',
                    'Parts Direct', 'Industrial', 'Services', 'Trading', 'Import',
                    'Wholesale', 'Distribution', 'Manufacturing', 'Engineering']
CITIES = ['Tel Aviv', 'Jerusalem', 'Haifa', 'Beer Sheva', 'Rishon LeZion', 'Petah Tikva',
          'Ashdod', 'Netanya', 'Bnei Brak', 'Holon', 'Ramat Gan', 'Rehovot',
          'Ashkelon', 'Bat Yam', 'Herzliya', 'Kfar Saba', 'Modi''in', 'Nazareth',
          'Lod', 'Ramla', 'Acre', 'Eilat', 'Tiberias', 'Nahariya', 'Kiryat Gat']
STREETS = ['Herzl', 'Ben Gurion', 'Weizmann', 'Rothschild', 'Dizengoff', 'HaNassi',
           'Jabotinsky', 'Sokolov', 'Begin', 'Rabin', 'HaAtzma''ut', 'Nordau',
           'Allenby', 'King George', 'Balfour', 'Ha''Palmach', 'Kaplan', 'Arlozorov']

with open('Supplier.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        company = f"{random.choice(COMPANY_PREFIXES)} {random.choice(COMPANY_SUFFIXES)}"
        contact_fn = random.choice(FIRST_NAMES)
        contact_ln = random.choice(LAST_NAMES)
        contact = f"{contact_fn} {contact_ln}"
        phone = f"0{random.choice(['3','4','8','9'])}-{random.randint(1000000,9999999)}"
        email = f"info@{company.lower().replace(' ','').replace('.','')[:12]}.co.il"
        city = random.choice(CITIES)
        street = random.choice(STREETS)
        address = f"{random.randint(1,200)} {street} St"

        f.write(f"insert into Supplier (supplier_id, company_name, contact_person, phone, email, "
                f"address, city, country) values "
                f"({i}, '{escape_sql(company)}', '{escape_sql(contact)}', '{phone}', "
                f"'{escape_sql(email)}', '{escape_sql(address)}', '{escape_sql(city)}', 'Israel');\n")

print("Generated 500 Supplier rows -> Supplier.sql")

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

PART_DESCRIPTIONS = [
    'OEM replacement part', 'High-quality aftermarket part', 'Heavy-duty industrial grade',
    'Stainless steel construction', 'Commercial-grade component', 'Energy-efficient model',
    'Universal fit component', 'Precision-engineered replacement', 'Food-safe certified',
    'NSF-approved component'
]

NUM_SUPPLIERS = 500

with open('SparePart.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        name = random.choice(PART_NAMES)
        suffix = f" {random.choice(['3kW','5kW','1HP','2HP','12V','24V','120mm','200mm','Standard','Pro','XL','Mini'])}"
        full_name = name + suffix
        desc = random.choice(PART_DESCRIPTIONS)
        price = round(random.uniform(5, 2000), 2)
        stock = random.randint(0, 100)
        min_stock = random.randint(2, 15)
        sup_id = random.randint(1, NUM_SUPPLIERS)

        f.write(f"insert into SparePart (part_id, name, description, unit_price, stock_quantity, "
                f"minimum_stock, supplier_id) values "
                f"({i}, '{escape_sql(full_name)}', '{escape_sql(desc)}', {price}, {stock}, {min_stock}, {sup_id});\n")

print("Generated 500 SparePart rows -> SparePart.sql")
