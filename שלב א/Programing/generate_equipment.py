"""
Generate 500 INSERT statements for the Equipment table.
Method: Python scripting
"""
import random
from datetime import datetime, timedelta

random.seed(42)

NAMES = [
    'Industrial Oven', 'Commercial Oven', 'Convection Oven', 'Pizza Oven', 'Deck Oven',
    'Gas Range', 'Electric Range', 'Induction Cooktop', 'Charbroiler', 'Flat Top Grill',
    'Deep Fryer', 'Pressure Fryer', 'Salamander Broiler', 'Steam Table', 'Bain Marie',
    'Walk-in Freezer', 'Walk-in Cooler', 'Reach-in Refrigerator', 'Under-counter Fridge',
    'Prep Table Cooler', 'Blast Chiller', 'Ice Machine', 'Display Cooler', 'Wine Cooler',
    'Commercial Dishwasher', 'Glass Washer', 'Pot Washer', 'Conveyor Dishwasher',
    'Food Processor', 'Stand Mixer', 'Immersion Blender', 'Meat Slicer', 'Meat Grinder',
    'Dough Sheeter', 'Bread Slicer', 'Vegetable Cutter', 'Juice Extractor',
    'Exhaust Hood', 'Ventilation Fan', 'Air Curtain', 'HVAC Unit',
    'Fire Suppression System', 'Fire Extinguisher', 'Smoke Detector', 'Gas Detector',
    'POS Terminal', 'Receipt Printer', 'Kitchen Display', 'Order Tablet',
    'Coffee Machine', 'Espresso Machine', 'Water Heater', 'Water Filter System',
    'Toaster', 'Panini Press', 'Waffle Maker', 'Crepe Maker', 'Rice Cooker',
    'Vacuum Sealer', 'Food Warmer', 'Heat Lamp', 'Soup Kettle', 'Tilting Skillet'
]

CATEGORIES = ['Cooking', 'Refrigeration', 'Dishwashing', 'Food Prep', 'Ventilation',
              'Safety', 'Technology', 'Beverage', 'Storage']

MANUFACTURERS = ['Rational', 'Hoshizaki', 'Hobart', 'True Manufacturing', 'Manitowoc',
                 'Vulcan', 'Garland', 'Electrolux', 'Alto-Shaam', 'Cambro',
                 'Scotsman', 'Turbo Air', 'Waring', 'Robot Coupe', 'Vitamix',
                 'Bunn', 'De Longhi', 'Breville', 'KitchenAid', 'Hamilton Beach']

STATUSES = ['Active', 'Active', 'Active', 'Active', 'Under Repair', 'Decommissioned', 'In Storage']

NUM_LOCATIONS = 500  # must match Location table range

def random_date(start_year, end_year):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return start + timedelta(days=random.randint(0, delta))

def escape_sql(s):
    return s.replace("'", "''")

with open('Equipment_Insert.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 501):
        name = random.choice(NAMES)
        cat_map = {
            'Oven': 'Cooking', 'Range': 'Cooking', 'Cooktop': 'Cooking', 'Grill': 'Cooking',
            'Fryer': 'Cooking', 'Broiler': 'Cooking', 'Charbroiler': 'Cooking', 'Skillet': 'Cooking',
            'Freezer': 'Refrigeration', 'Cooler': 'Refrigeration', 'Fridge': 'Refrigeration',
            'Refrigerator': 'Refrigeration', 'Chiller': 'Refrigeration', 'Ice': 'Refrigeration',
            'Dishwasher': 'Dishwashing', 'Washer': 'Dishwashing',
            'Processor': 'Food Prep', 'Mixer': 'Food Prep', 'Blender': 'Food Prep',
            'Slicer': 'Food Prep', 'Grinder': 'Food Prep', 'Sheeter': 'Food Prep',
            'Cutter': 'Food Prep', 'Extractor': 'Food Prep', 'Sealer': 'Food Prep',
            'Hood': 'Ventilation', 'Fan': 'Ventilation', 'Curtain': 'Ventilation', 'HVAC': 'Ventilation',
            'Fire': 'Safety', 'Smoke': 'Safety', 'Gas Detector': 'Safety',
            'POS': 'Technology', 'Printer': 'Technology', 'Display': 'Technology', 'Tablet': 'Technology',
            'Coffee': 'Beverage', 'Espresso': 'Beverage', 'Water': 'Beverage',
        }
        category = 'Cooking'
        for key, val in cat_map.items():
            if key in name:
                category = val
                break
        model = f"{name[:2].upper()}-{random.randint(100,9999)}"
        manufacturer = random.choice(MANUFACTURERS)
        serial = f"SN-{i:06d}"
        purchase = random_date(2018, 2024)
        warranty_years = random.choice([1, 2, 3, 5])
        warranty_end = purchase + timedelta(days=365 * warranty_years)
        cost = round(random.uniform(500, 50000), 2)
        status = random.choice(STATUSES)
        loc_id = random.randint(1, NUM_LOCATIONS)

        purchase_str = purchase.strftime('%Y-%m-%d')
        warranty_str = warranty_end.strftime('%Y-%m-%d')

        f.write(f"INSERT INTO Equipment (equipment_id, name, category, model, manufacturer, serial_number, "
                f"purchase_date, warranty_end_date, purchase_cost, status, location_id) VALUES "
                f"({i}, '{escape_sql(name)}', '{category}', '{model}', '{escape_sql(manufacturer)}', "
                f"'{serial}', TO_DATE('{purchase_str}','YYYY-MM-DD'), TO_DATE('{warranty_str}','YYYY-MM-DD'), "
                f"{cost}, '{status}', {loc_id});\n")

print("Generated 500 Equipment INSERT statements -> Equipment_Insert.sql")
