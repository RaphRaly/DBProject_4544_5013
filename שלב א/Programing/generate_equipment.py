"""
Generate 500 INSERT statements for the Equipment table.
Method: Python scripting
New schema: equipment_id, name, serial_number, purchase_date, status, last_service_date, type_id, area_id
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

STATUSES = ['Active', 'Active', 'Active', 'Active', 'Under Repair', 'Decommissioned', 'In Storage']

NUM_TYPES = 500
NUM_AREAS = 500

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
        serial = f"SN-{i:06d}"
        purchase = random_date(2018, 2025)
        status = random.choice(STATUSES)
        # last_service_date: NULL or sometime after purchase
        if random.random() > 0.2:
            days_after = random.randint(30, (datetime(2026, 3, 1) - purchase).days)
            last_service = purchase + timedelta(days=days_after)
            last_service_str = f"'{last_service.strftime('%Y-%m-%d')}'"
        else:
            last_service_str = "NULL"
        type_id = random.randint(1, NUM_TYPES)
        area_id = random.randint(1, NUM_AREAS)
        purchase_str = purchase.strftime('%Y-%m-%d')

        f.write(f"INSERT INTO Equipment (equipment_id, name, serial_number, purchase_date, "
                f"status, last_service_date, type_id, area_id) VALUES "
                f"({i}, '{escape_sql(name)}', '{serial}', '{purchase_str}', "
                f"'{status}', {last_service_str}, {type_id}, {area_id});\n")

print("Generated 500 Equipment INSERT statements -> Equipment_Insert.sql")
