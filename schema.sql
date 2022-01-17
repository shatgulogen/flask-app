CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email TEXT NOT NULL unique,
    password VARCHAR(64) NOT NULL,
    admin BOOLEAN
);

INSERT INTO users (name, email, password, admin) VALUES 
('Shatgul Ogen', 'shatgulgogo@gmail.com', '$2b$12$.1yurhC51zgmOf0jEHFYPeWBXB/8v7..5zIjt9ac23VTu0kebWOGC', 'FALSE');
INSERT INTO users (name, email, password, admin) VALUES 
('Meghan Correa', 'meghangogo@gmail.com', '$2b$12$wtN4VfW8AalopKrCjPqLaOw9AZFbEeYdOnM3UcTK0VwAv.YVodpsq', 'TRUE');
INSERT INTO users (name, email, password, admin) VALUES 
('Charlyn Gonda', 'charlyngogo@gmail.com', '$2b$12$licH6i6hoq03emQMsyV9HOhuro3lRNx/Pi.bOWlIcv5PecDfcmOQm', 'TRUE');
INSERT INTO users (name, email, password, admin) VALUES 
('Maria Laura', 'mariagogo@gmail.com', '$2b$12$EV7jappww9dgAGrdro./0esXwn1VsjHfsSshPFPFyKJ7bSoAcPqq6', 'TRUE');
INSERT INTO users (name, email, password, admin) VALUES 
('Lisa Inoue', 'lisagogo@gmail.com', '$2b$12$sc9MWeQJIyVLB1tVcogSwOVwfrq3pvyM.0DriDkMmIN1QjHhhccT', 'TRUE');

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    name CHARACTER varying(50) NOT NULL,
    num_of_kids INTEGER,
    location CHARACTER varying(50) NOT NULL,
    image_url TEXT,
    skills TEXT,
    experience TEXT,
    availability TEXT
);

INSERT INTO profiles (user_id, name, num_of_kids, location, image_url, skills, experience, availability) VALUES
    ('1', 'Meghan Correa', 5, 'United States', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev4.png', 'React, JavaScript, CSS, Python, SQL.', '2 years', 'full time');
INSERT INTO profiles (user_id, name, num_of_kids, location, image_url, skills, experience, availability) VALUES
    ('2', 'Charlyn Gonda', 8, 'Canada', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev2.png', 'Ruby, AngularJS, PostgresSQL, Linux, CSS, Mobile Web, JavaScript, React.', '3 years', 'full time');
INSERT INTO profiles (user_id, name, num_of_kids, location, image_url, skills, experience, availability) VALUES
    ('3', 'Maria Laura', 1, 'Poland', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev1.png', 'Full-stack, React, CSS, HTML5', '1 year', 'part time');
INSERT INTO profiles (user_id, name, num_of_kids, location, image_url, skills, experience, availability) VALUES
    ('4', 'Lisa Inoue', 2, 'Japan', 'https://raw.githubusercontent.com/shatgulogen/picsformomdevsproject/main/dev3.png', 'React, JavaScript, SQL, Node.js, MongoDB, CSS, HTML5.', '5 years', 'full time');



CREATE TABLE blog_posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    blog_title TEXT,
    blog_content TEXT,
    length INTEGER,
    category_id INTEGER,
        CONSTRAINT fk_user
    FOREIGN KEY(user_id)
    REFERENCES users(id)
);

INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('1', 'Must Know Tricks for Efficient Javascript.', 'Use Object-Oriented Approach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjhsebfjkshbfjashfbejkaefbehjafbjae', '25', '1');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('2', 'System Design Rescourses for learning.', 'Useejkfbweiufbsekjhbcsjkdhbclskjdfnlskejnflsuhfliseuhfeoach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjafbjae', '16', '2');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('2', 'Technologies to learn in 2022.', 'Udsjkbfjkshdbfkjsdhbfkjhsdbkjsh lkjsbfljshabefkjhsebflljabfl lakwjbfdlkjabfljabjkshbfjavhgvnghvngvngvghvjhdfhxgfnbcjhgcjvjhgvjhgvj vhgvjhgvshfbejkaefbehjafbjae', '20', '3');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('3', 'Career growth for mom developers.', 'kdjfiuehfieufhjlwkdj;wk.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjhsebfjkshbfjashfbejkaefbehjangvhgvhgjhgvhjfbjae', '15', '4');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('3', 'How to prepare for interview for front-end position.', 'Useejkfbweiufbsekjhbcsjkdhbclskjdfnlskejnflsuhfliseuhfeoach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjeh', '17', '1');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('4', 'How to tackle system design interview', 'Udsjkbfjkshdbfkjsdhbfkjhsdbkjsh lkjsbfljshabefkjhsebflljabfl lakwjbfdlkjabfljabjkshbfjashfbejkaefbehjafbjnddksuhfkjsfghajshfbjasyegceaykeuhkauhefkaesjae', '20', '5');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('2', 'How to balance sleep, job, and mom role.', 'Useejkfbweiufbsekjhbcsjkdhbclskjdfnlskejnflsuhfliseuhfeoach.kjsdbfjshdbfjkshdvskycbhkjsnd cbkjsahdbjaskhdbajshbkjsahdasmnefb sjkhefbakjehbfshbfkjhjae', '18', '4');
INSERT INTO blog_posts(user_id, blog_title, blog_content, length, category_id) VALUES
('4', 'How to effectively communicate with co-worker when conflicts occur', 'Udsjkbfjkshdbfkjsdhbfkjhsdbkjsh lkjsbfljshabefkjhsebflljabfl lakwjbfdlkjabfljabjkshbfjashfbejkaefbehjsdkfjbsejfnksejnafbjae', '21', '4');


CREATE TABLE post_categories(
    post_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL
);

INSERT INTO post_categories (post_id, category_id) VALUES
('1', '1');
INSERT INTO post_categories (post_id, category_id) VALUES
('2', '2');
INSERT INTO post_categories (post_id, category_id) VALUES
('3', '3');
INSERT INTO post_categories (post_id, category_id) VALUES
('4', '4');
INSERT INTO post_categories (post_id, category_id) VALUES
('5', '1');
INSERT INTO post_categories (post_id, category_id) VALUES
('6', '5');
INSERT INTO post_categories (post_id, category_id) VALUES
('7', '4');
INSERT INTO post_categories (post_id, category_id) VALUES
('8', '4');


CREATE TABLE blog_categories(
    id SERIAL PRIMARY KEY,
    category_name TEXT
);

INSERT INTO blog_categories (category_name) VALUES
('Web front end');
INSERT INTO blog_categories (category_name) VALUES
('Back-end');
INSERT INTO blog_categories (category_name) VALUES
('Technology');
INSERT INTO blog_categories (category_name) VALUES
('Engineering management');
INSERT INTO blog_categories (category_name) VALUES
('Databases');

CREATE TABLE company_reviews (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    content TEXT NOT NULL,
    rating INTEGER,
    reviewer_title TEXT NOT NULL,
    company_name TEXT NOT NULL,
        CONSTRAINT fk_user
    FOREIGN KEY(user_id)
    REFERENCES users(id)
);
INSERT INTO company_reviews ( user_id, content, rating, reviewer_title, company_name) VALUES
('1', 'The mom devs who I was paried with were incredible -- smart, to-the-point, driven, and responsive. The hiring process was super quick and effective.', 5, 'CEO', 'HatchPro');
INSERT INTO company_reviews ( user_id, content, rating, reviewer_title, company_name) VALUES
('2', 'Meghan was an awesome developer to work with. Top totch, responsive, and always got the work done efficiently.', 5, 'Chief Technologist and Co-Founder', 'Winning, Inc.');
INSERT INTO company_reviews ( user_id, content, rating, reviewer_title, company_name) VALUES
('3', 'Lily is a great developer to work with and this platform is our go to place for finding mom dev talents', 5, 'CEO', 'UnicornSpace, Inc.');



-------------------------------------------------------------------------------------------
-- CREATE TABLE hiring_users ( --This is for future improvement for this project when time allows
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
----------------------------------------------------------------------------------------------------