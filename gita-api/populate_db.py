import os
import json

from db import get_client

db_host = os.environ['DB_HOST']

def populate_db():
    client = get_client(db_host)
    database = client['gita-db']
    collection = database['gita-verses']
    with open('gita.json') as file:
        verses = json.loads(file.read())

    for verse in verses:
        collection.insert_many(verses)