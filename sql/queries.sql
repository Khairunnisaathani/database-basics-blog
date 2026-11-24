-- BLOG DATABASE MANAGEMENT SYSTEM
-- SQL Queries

-- 1. Display all users
SELECT * FROM users;

-- 2. Display all blog posts
SELECT * FROM posts;

-- 3. Display all comments
SELECT * FROM comments;

-- 4. Find a user by email
SELECT * FROM users
WHERE email = 'khairunnisa@example.com';

-- 5. Display posts with author names
SELECT
    posts.post_id,
    posts.title,
    posts.content,
    users.name AS author
FROM posts
INNER JOIN users
ON posts.user_id = users.user_id;

-- 6. Display comments with usernames
SELECT
    comments.comment_id,
    comments.comment_text,
    users.name AS commenter
FROM comments
INNER JOIN users
ON comments.user_id = users.user_id;

-- 7. Display posts with their comments
SELECT
    posts.title,
    comments.comment_text
FROM posts
LEFT JOIN comments
ON posts.post_id = comments.post_id;

-- 8. Count total users
SELECT COUNT(*) AS total_users
FROM users;

-- 9. Count total blog posts
SELECT COUNT(*) AS total_posts
FROM posts;

-- 10. Count comments for each post
SELECT
    posts.title,
    COUNT(comments.comment_id) AS total_comments
FROM posts
LEFT JOIN comments
ON posts.post_id = comments.post_id
GROUP BY posts.post_id, posts.title;

-- 11. Update a blog post title
UPDATE posts
SET title = 'Introduction to Modern Artificial Intelligence'
WHERE post_id = 1;

-- 12. Update a comment
UPDATE comments
SET comment_text = 'Excellent article!'
WHERE comment_id = 1;

-- 13. Delete a comment
-- Uncomment to execute:
-- DELETE FROM comments WHERE comment_id = 4;

-- 14. Display recent posts
SELECT *
FROM posts
ORDER BY created_at DESC;
