🚀 **Express.js Interview Question of the Day**

### ❓ What is the difference between `app.use()` and `app.get()` in Express.js?

Many beginners think they are interchangeable, but they serve different purposes.

✅ **`app.use()`**

* Used to register middleware.
* Executes for every HTTP method (GET, POST, PUT, DELETE, etc.) unless a path is specified.
* Commonly used for logging, authentication, parsing JSON, and error handling.

```javascript
app.use(express.json());
```

✅ **`app.get()`**

* Handles only **GET** requests.
* Used to create a route that responds to a specific URL.

```javascript
app.get("/users", (req, res) => {
  res.send("Users List");
});
```

### 🎯 Interview Answer

> **`app.use()` is used to register middleware that can run for multiple HTTP methods, while `app.get()` is specifically used to handle GET requests for a particular route.**

💡 **Pro Tip:** In real-world Express applications, every request usually passes through multiple middleware (authentication, validation, logging, etc.) before reaching the route handler.

What's another Express.js interview question you've been asked? Share it in the comments! 👇

#ExpressJS #NodeJS #BackendDevelopment #JavaScript #WebDevelopment #SoftwareEngineer #CodingInterview #100DaysOfCode #LearningInPublic #TechInterview
