import database

# All Database functionality relating to profile

# CRUD:
# -- Create
# -- Read
# -- Update
# -- Delete

# INSERT PROFILE INTO DB


def insert_profile(user_id, name, num_of_kids, location, skills, image_url, experience, availability):
    database.sql_write("INSERT into profiles (user_id, name, num_of_kids, location, skills, image_url, experience, availability) VALUES (%s, %s, %s, %s, %s, %s, %s, %s);", [
        user_id,
        name,
        num_of_kids,
        location,
        skills,
        image_url,
        experience,
        availability
    ])

# SELECT PROFILE FROM DB


def get_profile(id):
    results = database.sql_select(
        'SELECT id, user_id, name, num_of_kids, location, image_url, skills, experience, availability FROM profiles WHERE id = %s', [id])
    result = results[0]
    return result

# SELECT ALL PROFILE FROM DB


def get_all_profile():
    results = database.sql_select(
        "SELECT id, user_id, name, num_of_kids, location, image_url, skills, experience, availability FROM profiles", [])
    return results

# UPDATE PROFILE IN DB


def update_profile(id, name, num_of_kids, location, image_url, skills, experience, availability):
    database.sql_write("UPDATE profiles set name = %s, num_of_kids =%s, location = %s, image_url = %s, skills = %s, experience =%s, availability=%s WHERE id = %s", [
        name,
        num_of_kids,
        location,
        image_url,
        skills,
        experience,
        availability,
        id
    ])

# DELETE PROFILE FROM DB


def delete_profile(id):
    database.sql_write("DELETE FROM profiles WHERE id = %s", [id])
