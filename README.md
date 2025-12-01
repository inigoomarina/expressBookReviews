# 📚 Book Review Application - Final Project

A complete server-side online book review application built with Express.js, featuring REST APIs with JWT authentication.

## ✨ Features Implemented

### General User Endpoints (Tasks 1-6)
- ✅ **Task 1:** Get all books available in the shop
- ✅ **Task 2:** Get book details by ISBN
- ✅ **Task 3:** Get all books by a specific author
- ✅ **Task 4:** Get all books by title
- ✅ **Task 5:** Get book reviews
- ✅ **Task 6:** Register new users

### Authenticated User Endpoints (Tasks 7-9)
- ✅ **Task 7:** User login with JWT token generation
- ✅ **Task 8:** Add/modify book reviews (authenticated users only)
- ✅ **Task 9:** Delete own book reviews (authenticated users only)

### Async/Promise Implementations (Tasks 10-13)
- ✅ **Task 10:** Get all books using Promises
- ✅ **Task 11:** Search by ISBN using Promises
- ✅ **Task 12:** Search by Author using Promises
- ✅ **Task 13:** Search by Title using Promises

## 🚀 Getting Started

### Installation

```bash
cd final_project
npm install
```

### Running the Server

```bash
npm start
```

Server will run on `http://localhost:5000`

## 📡 API Endpoints

### Public Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Get all books |
| GET | `/isbn/:isbn` | Get book by ISBN |
| GET | `/author/:author` | Get books by author |
| GET | `/title/:title` | Get books by title |
| GET | `/review/:isbn` | Get book reviews |
| POST | `/register` | Register new user |

### Authenticated Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/customer/login` | Login and get JWT token |
| PUT | `/customer/auth/review/:isbn` | Add/modify review |
| DELETE | `/customer/auth/review/:isbn` | Delete own review |

### Async/Promise Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/promise` | Get all books (Promise) |
| GET | `/promise/isbn/:isbn` | Get book by ISBN (Promise) |
| GET | `/promise/author/:author` | Get books by author (Promise) |
| GET | `/promise/title/:title` | Get books by title (Promise) |

## 🧪 Testing

Run the automated test script:

```bash
cd final_project
./test_all_tasks.sh
```

This will test all endpoints sequentially.

## 📦 Technologies Used

- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **JWT (jsonwebtoken)** - Authentication
- **express-session** - Session management
- **Axios** - HTTP client for async operations

## 📝 Project Structure

```
final_project/
├── index.js                 # Main server file
├── router/
│   ├── auth_users.js       # Authenticated user routes
│   ├── general.js          # Public user routes
│   └── booksdb.js          # Book data
├── package.json
└── test_all_tasks.sh       # Test script
```

## 🔐 Authentication

The application uses JWT (JSON Web Tokens) for authentication:
- Users must register before logging in
- Login generates a JWT token stored in the session
- Protected routes require valid JWT token
- Each user can only delete their own reviews

## 👤 Author

**Íñigo Marina**

## 📄 License

MIT

---

**Note:** This project was completed as part of the IBM Full Stack Developer course final project.