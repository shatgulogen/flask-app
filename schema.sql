CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    name character varying(50) NOT NULL,
    location character varying(50) NOT NULL,
    image_url text,
    skills text
);

INSERT INTO profiles(name, location, image_url, skills) VALUES
    ('Meghan Correa', 'United States', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev4.png', 'React, JavaScript, CSS, Python, SQL.'),
    ('Charlyn Gonda', 'Canada', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev2.png', 'Ruby, AngularJS, PostgresSQL, Linux, CSS, Mobile Web, JavaScript, React.'),
    ('Maria Laura', 'Poland', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev1.png', 'Full-stack, React, CSS, HTML5'),
    ('Lisa Inoue', 'Japan', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev3.png', 'React, JavaScript, SQL, Node.js, MongoDB, CSS, HTML5.');