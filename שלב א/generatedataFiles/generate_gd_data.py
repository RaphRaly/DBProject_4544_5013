"""
Generate SQL files in Generatedata batch format (batch INSERT with multiple VALUES per statement)
for: RestaurantArea (500), EquipmentType (500), Uses (500)
New schema aligned to updated ERD.
"""
import random

random.seed(321)

BATCH_SIZE = 10  # generatedata.com typically does 10 rows per INSERT

def escape_sql(s):
    return s.replace("'", "''")

# --- RestaurantArea (500 rows) ---
AREA_NAMES = [
    'Main Kitchen', 'Prep Kitchen', 'Cold Storage Room', 'Dry Storage', 'Walk-in Cooler',
    'Walk-in Freezer', 'Dining Area', 'Private Dining', 'Bar Area', 'Cocktail Bar',
    'Pastry Station', 'Grill Station', 'Fry Station', 'Sushi Station', 'Salad Station',
    'Dishwashing Area', 'Receiving Dock', 'Office', 'Staff Room', 'Restroom Area',
    'Outdoor Patio', 'Rooftop Terrace', 'Wine Cellar', 'Bakery Section', 'Butcher Room',
    'Banquet Hall', 'VIP Lounge', 'Entrance Lobby', 'Coat Check', 'Storage Basement',
    'Utility Room', 'Garbage Area', 'Loading Bay', 'Coffee Station', 'Juice Bar',
    'Service Counter', 'Host Stand', 'Waiting Area', 'Catering Kitchen', 'Training Kitchen'
]

SECTORS = ['A', 'B', 'C', 'D', 'E', 'F', 'North', 'South', 'East', 'West', 'Central']

with open('RestaurantArea.sql', 'w', encoding='utf-8') as f:
    rows = []
    for i in range(1, 501):
        area_name = f"{random.choice(AREA_NAMES)} {random.choice(SECTORS)}"
        rows.append(f"({i}, '{escape_sql(area_name)}')")

        if len(rows) == BATCH_SIZE or i == 500:
            f.write(f"INSERT INTO RestaurantArea (area_id, area_name) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 RestaurantArea rows (batch format) -> RestaurantArea.sql")

# --- EquipmentType (500 rows) ---
TYPE_NAMES = [
    'Industrial Oven', 'Commercial Oven', 'Convection Oven', 'Pizza Oven', 'Deck Oven',
    'Gas Range', 'Electric Range', 'Induction Cooktop', 'Charbroiler', 'Flat Top Grill',
    'Deep Fryer', 'Pressure Fryer', 'Salamander Broiler', 'Steam Table', 'Bain Marie',
    'Walk-in Freezer', 'Walk-in Cooler', 'Reach-in Refrigerator', 'Under-counter Fridge',
    'Blast Chiller', 'Ice Machine', 'Display Cooler', 'Wine Cooler',
    'Commercial Dishwasher', 'Glass Washer', 'Pot Washer', 'Conveyor Dishwasher',
    'Food Processor', 'Stand Mixer', 'Immersion Blender', 'Meat Slicer', 'Meat Grinder',
    'Dough Sheeter', 'Bread Slicer', 'Vegetable Cutter', 'Juice Extractor',
    'Exhaust Hood', 'Ventilation Fan', 'Air Curtain', 'HVAC Unit',
    'Fire Suppression System', 'Smoke Detector', 'Gas Detector',
    'POS Terminal', 'Receipt Printer', 'Kitchen Display', 'Order Tablet',
    'Coffee Machine', 'Espresso Machine', 'Water Heater', 'Water Filter System',
    'Toaster', 'Panini Press', 'Waffle Maker', 'Rice Cooker',
    'Vacuum Sealer', 'Food Warmer', 'Heat Lamp', 'Soup Kettle', 'Tilting Skillet'
]

CATEGORIES = ['Cooking', 'Refrigeration', 'Dishwashing', 'Food Prep', 'Ventilation',
              'Safety', 'Technology', 'Beverage', 'Storage']

MODELS = ['Standard', 'Pro', 'XL', 'Mini', 'Heavy Duty', 'Compact', 'Digital', 'Smart']

with open('EquipmentType.sql', 'w', encoding='utf-8') as f:
    rows = []
    for i in range(1, 501):
        type_name = f"{random.choice(TYPE_NAMES)} {random.choice(MODELS)}"
        category = random.choice(CATEGORIES)
        rows.append(f"({i}, '{escape_sql(type_name)}', '{escape_sql(category)}')")

        if len(rows) == BATCH_SIZE or i == 500:
            f.write(f"INSERT INTO EquipmentType (type_id, type_name, category) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 EquipmentType rows (batch format) -> EquipmentType.sql")

# --- Uses (500 rows) ---
NUM_MAINTENANCE = 20000
NUM_PARTS = 500

with open('Uses.sql', 'w', encoding='utf-8') as f:
    used_pairs = set()
    rows = []
    count = 0
    while count < 500:
        m_id = random.randint(1, NUM_MAINTENANCE)
        p_id = random.randint(1, NUM_PARTS)
        pair = (m_id, p_id)
        if pair in used_pairs:
            continue
        used_pairs.add(pair)
        count += 1
        rows.append(f"({m_id}, {p_id})")

        if len(rows) == BATCH_SIZE or count == 500:
            f.write(f"INSERT INTO Uses (maintenance_id, part_id) VALUES\n")
            f.write(",\n".join(rows) + ";\n\n")
            rows = []

print("Generated 500 Uses rows (batch format) -> Uses.sql")
