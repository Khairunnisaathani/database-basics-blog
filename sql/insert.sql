-- BLOG DATABASE
-- Sample Data Insertion

-- Insert Users
INSERT INTO users (name, email, password)
VALUES
('Khairunnisa', 'khairunnisa@example.com', 'hashed_password_1'),
('Ayesha', 'ayesha@example.com', 'hashed_password_2'),
('Rahul', 'rahul@example.com', 'hashed_password_3');

-- Insert Blog Posts
INSERT INTO posts (user_id, title, content)
VALUES
(1, 'Introduction to Artificial Intelligence',
 'Artificial Intelligence helps computers perform intelligent tasks.'),

(2, 'Learning Web Development',
 'HTML, CSS and JavaScript are essential web development technologies.'),

(3, 'Database Fundamentals',
 'Databases help us store and manage information efficiently.');

-- Insert Comments
INSERT INTO comments (post_id, user_id, comment_text)
VALUES
(1, 2, 'Very informative article!'),
(1, 3, 'Great explanation about AI.'),
(2, 1, 'I enjoyed reading this post.'),
(3, 2, 'Thanks for sharing this information.');

