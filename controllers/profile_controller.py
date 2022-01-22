from flask import Blueprint, request, session, redirect, render_template
from models.profile import delete_profile, get_all_profile, get_profile, insert_profile, update_profile

profile_controller = Blueprint(
    "profile_controller", __name__, template_folder="../templates/profile")


@profile_controller.route('/profiles')
def profiles():
    profile_items = get_all_profile()

    return render_template('home.html', profile_items=profile_items)


@profile_controller.route('/profiles/create')
def create():
    if not session.get('user_id'):
        return redirect('/login')
    return render_template('create.html')


@profile_controller.route('/profiles', methods=["POST"])
def insert():
    if not session.get('user_id'):
        return redirect('/login')
    # INSERT INTO DB
    insert_profile(
        int(session.get("user_id")),
        request.form.get("name"),
        int(request.form.get("num_of_kids")),
        request.form.get("location"),
        request.form.get("skills"),
        request.form.get("image_url"),
        request.form.get("experience"),
        request.form.get("availability")
    )

    return redirect('/')


@profile_controller.route('/profiles/<id>')
def show(id):
    profile = get_profile(id)
    return render_template('show.html', profile=profile)


@profile_controller.route('/profiles/<id>/edit')
def edit(id):
    if not session.get('user_id'):
        return redirect('/login')
    profile = get_profile(id)
    return render_template('edit.html', profile=profile)


@profile_controller.route('/profiles/<id>', methods=["POST"])
def update(id):
    if not session.get('user_id'):
        return redirect('/login')
    name = request.form.get("name")
    num_of_kids = int(request.form.get("num_of_kids"))
    location = request.form.get("location")
    image_url = request.form.get("image_url")
    skills = request.form.get("skills")
    experience = request.form.get("experience")
    availability = request.form.get("availability")

    # UPDATE
    update_profile(id, name, num_of_kids, location, image_url,
                   skills, experience, availability)

    return redirect('/')


@profile_controller.route('/profiles/<id>/delete', methods=["POST"])
def delete(id):
    if not session.get('user_id'):
        return redirect('/login')
    delete_profile(id)
    return redirect('/')
