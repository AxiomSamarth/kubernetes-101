from pymongo import MongoClient

def get_client(host='mongo://localhost:27017'):
    client = MongoClient(host)
    return client