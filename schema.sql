CREATE TABLE talent_users (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email TEXT NOT NULL unique,
    password VARCHAR(255) NOT NULL
    talent_users_admin BOOLEAN
);

INSERT INTO talent_users (name, email, password) VALUES 
('Shatgul', 'tutiyagogo@gmail.com', 'password123');

-------------------------------------------------------------------------------------------
-- CREATE TABLE hiring_users (
--     id SERIAL NOT NULL PRIMARY KEY,
--     company-size text, --less than 10, 11-50, 51-200, 201-1000, 1001-5000, more than 5000
--     project-length text, --less than 1 week, 1 to 4 weeks, 1 to 3 months, 3 to 6 months, longer than 6 month, decide later
--     time-commitment text, --full time(40 or more hrs/week), part time(less than 40 hrs/week), hourly, decide later
--     skills-requirement text,--list popular skills needed: JavaScript, CSS, PHP, React, HTML, Node.js, iOS, MySQL, Python, HTML5
--     ready-to-start text, --immediately, in 1 to 2 weeks, more than 2 weeks from now, decide later
--     open-for-remote text, -- yes, no, not sure
--     budget-estimation text, -- less than $70/hr, $70-$90/hr, $91-$110/hr, more than $110/hr, not sure
--     company-name VARCHAR(100) NOT NULL,
--     company-email TEXT NOT NULL unique,
--     contact-name VARCHAR(100) NOT NULL,
--     password VARCHAR(255) NOT NULL,
--     hiring_users_admin BOOLEAN
-- );

-- INSERT INTO hiring_users (company-size, project-length, time-commitment, skills-requirement, ready-to-start, open-for-remote, budget-estimation, company-name, company-email, contact-name, password) VALUES
-- ('201-1000', '3 to 6 months', 'part time(less than 40 hrs/week)', 'JavaScript, CSS, React, Python', 'more than 2 weeks from now','yes', '$70-$90/hr', 'oneoftheFANG', 'oneoftheFANG@oneoftheFANG.com', 'password222');
---------------------------------------------------------------------------------------------
-- CREATE TABLE company_reviews (
--     id SERIAL NOT NULL PRIMARY KEY,
--     content TEXT NOT NULL,
--     rating INTEGER,
--     reviewername-and-title TEXT NOT NULL,
--     company-name VARCHAR(100) NOT NULL,
-- )
-- INSERT INTO company_reviews ( content, rating, reviewername-and-title, company-name) VALUES
-- ('The mom devs who I was paried with were incredible -- smart, to-the-point, driven, and responsive. The hiring process was super quick and effective.', 5, 'Jason Baldwin, CEO', 'HatchPro')
-- ('Meghan was an awesome developer to work with. Top totch, responsive, and always got the work done efficiently.', 5, 'Dennis Viola, Chief Technologist and Co-Founder', 'Winning, Inc.')
-- ('Lily is a great developer to work with and this platform is our go to place for finding mom dev talents', 5, 'Mark IVANOV, CEO', 'UnicornSpace, Inc.')
-----------------------------------------------------------------------------------------------

CREATE TABLE mom_dev_profiles (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    name character varying(50) NOT NULL,
    num_of_kids INTEGER,
    location character varying(50) NOT NULL,
    image_url text,
    skills text,
    experience text,
    availability text
);


INSERT INTO mom_dev_profiles (name, num_of_kids, location, image_url, skills, experience, availability) VALUES
    ('Meghan Correa', 5, 'United States', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev4.png', 'React, JavaScript, CSS, Python, SQL.', '2 years', 'full time'),
    ('Charlyn Gonda', 11, 'Canada', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev2.png', 'Ruby, AngularJS, PostgresSQL, Linux, CSS, Mobile Web, JavaScript, React.', '3 years', 'full time'),
    ('Maria Laura', 1, 'Poland', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev1.png', 'Full-stack, React, CSS, HTML5', '1 year', 'part time'),
    ('Lisa Inoue', 2, 'Japan', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev3.png', 'React, JavaScript, SQL, Node.js, MongoDB, CSS, HTML5.', '5 years', 'full time');


-----------------------------------------------------------------------------------------------
-- CREATE TABLE blogs (
--     id SERIAL PRIMARY KEY,
--     blog_category TEXT, --web front end, back-end, technology, engineering management, databases
--     blog_title TEXT,
--     blog_content TEXT,
--     authorname TEXT,
--     length TEXT --how many minute read 
-- )
-- INSERT INTO blogs(blog_category, blog_title, blog_content, authorname, length) VALUES
-- ('web front end', 'Must Know Tricks for Efficient Javascript.', 'Use Object-Oriented Approach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjhsebfjkshbfjashfbejkaefbehjafbjae', 'Harish Danny', '25 MINUTE READ');
-- ('back-end', 'System Design Rescourses for learning.', 'Useejkfbweiufbsekjhbcsjkdhbclskjdfnlskejnflsuhfliseuhfeoach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjhsebfjkshbfjashfbejkaefbehjafbjae', 'Unicorn Sparkle', '16 MINUTE READ');
-- ('technology', 'Technologies to learn in 2022', 'Udsjkbfjkshdbfkjsdhbfkjhsdbkjsh lkjsbfljshabefkjhsebflljabfl lakwjbfdlkjabfljabjkshbfjashfbejkaefbehjafbjae', 'Sofia King', '20 MINUTE READ');

-----------------------------------------------------------------------------------------------