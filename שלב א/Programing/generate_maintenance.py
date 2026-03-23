"""
Generate 20,000 INSERT statements for the Maintenance table.
Method: Python scripting
New schema: maintenance_id, date, type, cost, notes, equipment_id, supplier_id
"""
import random
from datetime import datetime, timedelta

random.seed(123)

NUM_EQUIPMENT = 500
NUM_SUPPLIERS = 500
TYPES = ['Preventive', 'Corrective', 'Emergency', 'Inspection']

NOTES = {
    'Preventive': [
        'Quarterly inspection and cleaning',
        'Annual filter replacement',
        'Lubrication of moving parts',
        'Calibration check and adjustment',
        'Scheduled safety inspection',
        'Belt tension check and adjustment',
        'Thermostat calibration',
        'Electrical connection check',
        'Gasket inspection and replacement',
        'Drain line cleaning',
    ],
    'Corrective': [
        'Repaired faulty thermostat',
        'Replaced worn-out belt',
        'Fixed electrical short circuit',
        'Replaced broken door hinge',
        'Repaired water leak in pipe',
        'Fixed motor bearing noise',
        'Replaced damaged control board',
        'Repaired gas valve malfunction',
        'Fixed compressor cycling issue',
        'Replaced cracked heating element',
    ],
    'Emergency': [
        'Emergency shutdown due to gas leak',
        'Urgent compressor failure repair',
        'Emergency electrical fault repair',
        'Critical water flooding repair',
        'Emergency fire suppression check',
        'Urgent power supply failure',
        'Emergency cooling system failure',
        'Critical temperature alarm response',
        'Emergency motor burnout replacement',
        'Urgent safety switch failure',
    ],
    'Inspection': [
        'Health department compliance inspection',
        'Fire safety equipment inspection',
        'Gas system integrity check',
        'Electrical panel inspection',
        'Ventilation system airflow test',
        'Refrigerant level check',
        'Water quality testing',
        'Noise level measurement',
        'Energy efficiency assessment',
        'General condition assessment',
    ],
}

def random_date(start_year, end_year):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return start + timedelta(days=random.randint(0, delta))

def escape_sql(s):
    return s.replace("'", "''")

with open('Maintenance_Insert.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 20001):
        eq_id = random.randint(1, NUM_EQUIPMENT)
        sup_id = random.randint(1, NUM_SUPPLIERS)
        m_type = random.choice(TYPES)
        notes = random.choice(NOTES[m_type])
        m_date = random_date(2022, 2025)
        cost = round(random.uniform(50, 5000), 2)
        date_str = m_date.strftime('%Y-%m-%d')

        f.write(f"INSERT INTO Maintenance (maintenance_id, date, type, cost, notes, "
                f"equipment_id, supplier_id) VALUES "
                f"({i}, '{date_str}', '{m_type}', {cost}, '{escape_sql(notes)}', "
                f"{eq_id}, {sup_id});\n")

print("Generated 20,000 Maintenance INSERT statements -> Maintenance_Insert.sql")

print("Generated 20,000 Maintenance INSERT statements -> Maintenance_Insert.sql")
