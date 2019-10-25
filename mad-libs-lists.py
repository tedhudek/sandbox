import random

names=['Samara', 'Montgomery', 'Kathryn', 'Hikaru']
body_parts=['wrist','toe','nose']
fluids=['milk','soy sauce','orange juice']
substances=['mud','peas','applesauce']

name=random.choice(names)
body_part=random.choice(body_parts)
fluid=random.choice(fluids)
substance=random.choice(substances)

print('EXCUSED')
print(name,'is sick with the',body_part,'flu. Drink more',fluid,'and take',substance,'as needed.')

