m// BLOG DATABASE MANAGEMENT SYSTEM
// MongoDB Queries

// 1. Insert Users
db.users.insertMany([
    {
        user_id: 1,
        name: "Khairunnisa",
        email: "khairunnisa@example.com"
    },
    {
        user_id: 2,
        name: "Niyamat",
        email: "niyamat@example.com"
    },
    {
        user_id: 3,
        name: "Mujamil",
        email: "mujamil@example.com"
    }
]);

// 2. Insert Blog Posts
db.posts.insertMany([
    {
        post_id: 1,
        user_id: 1,
        title: "Introduction to Artificial Intelligence",
        content: "AI helps computers perform intelligent tasks."
    },
    {
        post_id: 2,
        user_id: 2,
        title: "Learning Web Development",
        content: "HTML, CSS and JavaScript are web technologies."
    },
    {
        post_id: 3,
        user_id: 3,
        title: "Database Fundamentals",
        content: "Databases store and manage information."
    }
]);

// 3. Insert Comments
db.comments.insertMany([
    {
        comment_id: 1,
        post_id: 1,
        user_id: 2,
        comment_text: "Very informative article!"
    },
    {
        comment_id: 2,
        post_id: 1,
        user_id: 3,
        comment_text: "Great explanation!"
    },
    {
        comment_id: 3,
        post_id: 2,
        user_id: 1,
        comment_text: "I enjoyed reading this post."
    }
]);

// 4. Display all users
db.users.find();

// 5. Display all posts
db.posts.find();

// 6. Display all comments
db.comments.find();

// 7. Find a user
db.users.findOne({
    email: "khairunnisa@example.com"
});

// 8. Find posts by user
db.posts.find({
    user_id: 1
});

// 9. Update a post
db.posts.updateOne(
    { post_id: 1 },
    { $set: { title: "Introduction to Modern AI" } }
);

// 10. Update a comment
db.comments.updateOne(
    { comment_id: 1 },
    { $set: { comment_text: "Excellent article!" } }
);

// 11. Count users
db.users.countDocuments();

// 12. Count posts
db.posts.countDocuments();

// 13. Delete a comment
// db.comments.deleteOne({ comment_id: 3 });

// 14. Display posts with comments
db.posts.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "post_id",
            foreignField: "post_id",
            as: "comments"
        }
    }
]);
