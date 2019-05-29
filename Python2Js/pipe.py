import json

with open('data.pipe', 'w') as pipe:
    pipe.write(json.dumps({
        'name': 'supeuser'
    }))
