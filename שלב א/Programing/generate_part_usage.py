"""
Generate 20,000 INSERT statements for the Fault table.
Method: Python scripting
New schema: fault_id, description, date, status, severity, equipment_id, technician_id
"""
import random
from datetime import datetime, timedelta

random.seed(456)

NUM_EQUIPMENT = 500
NUM_TECHNICIANS = 500
STATUSES = ['Open', 'In Progress', 'Resolved', 'Resolved', 'Resolved', 'Closed']
SEVERITIES = ['Low', 'Medium', 'Medium', 'High', 'Critical']

DESCRIPTIONS = [
    'Motor overheating detected',
    'Unusual vibration during operation',
    'Temperature not reaching set point',
    'Water leak from base unit',
    'Strange noise from compressor',
    'Display panel malfunction',
    'Door seal not closing properly',
    'Electrical short circuit detected',
    'Gas smell near equipment',
    'Power supply intermittent failure',
    'Excessive energy consumption',
    'Fan blade damaged or broken',
    'Control panel buttons unresponsive',
    'Refrigerant pressure low',
    'Belt slipping or worn out',
    'Thermostat reading inaccurate',
    'Drain clogged or blocked',
    'Burner ignition failure',
    'Ice buildup in freezer unit',
    'Oil leak from mechanical parts',
    'Timer malfunction',
    'Safety switch triggered repeatedly',
    'Condensation buildup inside unit',
    'Filter requires immediate replacement',
    'Bearing noise in motor assembly',
    'Exhaust system not functioning',
    'Pilot light keeps going out',
    'Water pressure insufficient',
    'Heating element burned out',
    'Circuit breaker tripping frequently',
]

def random_date(start_year, end_year):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return start + timedelta(days=random.randint(0, delta))

def escape_sql(s):
    return s.replace("'", "''")

with open('Fault_Insert.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 20001):
        eq_id = random.randint(1, NUM_EQUIPMENT)
        tech_id = random.randint(1, NUM_TECHNICIANS)
        desc = random.choice(DESCRIPTIONS)
        fault_date = random_date(2022, 2025)
        status = random.choice(STATUSES)
        severity = random.choice(SEVERITIES)
        date_str = fault_date.strftime('%Y-%m-%d')

        f.write(f"INSERT INTO Fault (fault_id, description, date, status, severity, "
                f"equipment_id, technician_id) VALUES "
                f"({i}, '{escape_sql(desc)}', '{date_str}', '{status}', '{severity}', "
                f"{eq_id}, {tech_id});\n")

print("Generated 20,000 Fault INSERT statements -> Fault_Insert.sql")
