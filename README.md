# flask-app

## Tech Used

-   HTML
-   CSS
-   Javascript
-   Python

Get this repo by forking it, and cloning your fork, or by cloning this repo directly or by downloading the zip somewhere to your coursework folder.

## Setup

This project uses virtualenv and `requirements.txt`.

Enter the repo:

```
cd flask-app
```

Create a venv:

```
python -m venv venv
```

Activate venv:

```
. venv/bin/activate
```

Install dependencies using `requirements.txt`

```
pip install -r requirements.txt
```

Create a Postgres database called `mom-devs-flex-jobs` (or any name, just then you will have to update the PG code in the app to work with your db name)

```
createdb profiles
```

Create schema and insert test data

```
psql mom-devs-flex-jobs < schema.sql
```

Or open `schema.sql` and take only the parts you want.

## Planning

**1. Create html files for contents:**

    - Include logo on top
    - Include a title on top : Mom Devs & Flex Jobs
    - Introduction: Connecting mom developers with the tech industry for flexible jobs. Hiring platform for mom talents for flexible developer positons.
    - Include one button on the top-left with other hidden buttons leading to different routes: React.js Developers, C++ Developers, Android Developers, iOS Developers..

**2. Add style to the contents by adding style.css**

**3. Add Javascript main.js**

**4. Things to improve**
