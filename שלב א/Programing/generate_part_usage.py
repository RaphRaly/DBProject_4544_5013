"""
Generate 20,000 INSERT statements for the PartUsage table.
Method: Python scripting
"""
import random

random.seed(456)

NUM_MAINTENANCE = 20000
NUM_PARTS = 500

with open('PartUsage_Insert.sql', 'w', encoding='utf-8') as f:
    for i in range(1, 20001):
        maint_id = random.randint(1, NUM_MAINTENANCE)
        part_id = random.randint(1, NUM_PARTS)
        qty = random.randint(1, 10)
        unit_cost = round(random.uniform(5, 1500), 2)

        f.write(f"INSERT INTO PartUsage (usage_id, maintenance_id, part_id, quantity_used, unit_cost) "
                f"VALUES ({i}, {maint_id}, {part_id}, {qty}, {unit_cost});\n")

print("Generated 20,000 PartUsage INSERT statements -> PartUsage_Insert.sql")
