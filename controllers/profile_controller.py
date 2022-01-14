from flask import Blueprint, request, session, redirect, render_template
from models.profile import delete_profile, get_all_profile, get_profile, insert_profile, update_profile

profile_controller = Blueprint(
    "profile_controller", __name__, template_folder="../templates/profile")


@profile_controller.route('/profiles')
def profiles():
    profile_items = get_all_profile()

    return render_template('list.html', profile_items=profile_items)


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
        request.form.get("name"),
        request.form.get("location"),
        request.form.get("skills"),
        request.form.get("image_url")
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
    location = request.form.get("location")
    description = request.form.get("skills")
    image_url = request.form.get("image_url")

    # UPDATE
    update_profile(id, name, location, description, image_url)

    return redirect('/')


@profile_controller.route('/profiles/<id>/delete', methods=["POST"])
def delete(id):
    if not session.get('user_id'):
        return redirect('/login')
    delete_profile(id)
    return redirect('/')
