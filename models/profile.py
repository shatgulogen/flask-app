import database

# All Database functionality relating to profile

# CRUD:
# -- Create
# -- Read
# -- Update
# -- Delete

# INSERT PROFILE INTO DB


def insert_profile(name, location, skills, image_url):
    database.sql_write("INSERT into profiles (name, location, skills, image_url) VALUES (%s, %s, %s, %s);", [
        name,
        location,
        skills,
        image_url
    ])

# SELECT PROFILE FROM DB


def get_profile(id):
    results = database.sql_select(
        'SELECT id, name, location, image_url, skills FROM profiles WHERE id = %s', [id])
    result = results[0]
    return result

# SELECT ALL PROFILE FROM DB


def get_all_profile():
    results = database.sql_select(
        "SELECT id, name, location, image_url, skills FROM profiles", [])
    return results

# UPDATE PROFILE IN DB


def update_profile(id, name, location, skills, image_url):
    database.sql_write("UPDATE profiles set name = %s, location = %s, skills = %s, image_url = %s WHERE id = %s", [
        name,
        location,
        skills,
        image_url,
        id
    ])

# DELETE PROFILE FROM DB


def delete_profile(id):
    database.sql_write("DELETE FROM profiles WHERE id = %s", [id])
