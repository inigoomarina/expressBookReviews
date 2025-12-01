# Book Review Application - Submission Instructions

## Project Information
**Project Title:** Book Review Application with REST API and JWT Authentication

---

## Step-by-Step Instructions for Taking Screenshots

### Prerequisites
1. Server must be running on port 5000
2. Terminal window should be full screen for clear screenshots

### How to Take Screenshots

#### For Tasks 1-9 (API Endpoint Screenshots):

1. **Run the test script:**
   ```bash
   cd /workspaces/PROJECT/expressBookReviews/final_project
   ./test_all_tasks.sh
   ```

2. **For each task:**
   - The script will display one task at a time
   - Take a screenshot of the terminal window showing:
     - The task number and description
     - The endpoint URL
     - The JSON response
     - The success status
   - Press Enter to move to the next task

3. **Screenshot naming convention:**
   - Task 1: `1-getallbooks.png`
   - Task 2: `2-getbooksbyISBN.png`
   - Task 3: `3-getbooksbyauthor.png`
   - Task 4: `4-getbooksbytitle.png`
   - Task 5: `5-getbookreview.png`
   - Task 6: `6-register.png`
   - Task 7: `7-login.png`
   - Task 8: `8-reviewadded.png`
   - Task 9: `9-deletereview.png`

#### For Tasks 10-13 (Code Screenshots):

These tasks require screenshots of the **code implementation** in `general.js`.

1. **Open the file:**
   ```bash
   cd /workspaces/PROJECT/expressBookReviews/final_project/router
   code general.js
   ```

2. **Take screenshots of these code sections:**

   **Task 10 (task10.png):** Lines 96-109
   ```javascript
   // Task 10: Get all books using Promise callbacks
   public_users.get('/promise', function (req, res) {
       const getBooks = new Promise((resolve, reject) => {
           resolve(books);
       });

       getBooks.then((booksData) => {
           return res.status(200).send(JSON.stringify(booksData, null, 4));
       }).catch((error) => {
           return res.status(500).json({ message: "Error fetching books" });
       });
   });
   ```

   **Task 11 (task11.png):** Lines 125-143
   ```javascript
   // Task 11: Get book by ISBN using Promise callbacks
   public_users.get('/promise/isbn/:isbn', function (req, res) {
       const isbn = req.params.isbn;
       
       const getBookByISBN = new Promise((resolve, reject) => {
           const book = books[isbn];
           if (book) {
               resolve(book);
           } else {
               reject("Book not found");
           }
       });

       getBookByISBN.then((book) => {
           return res.status(200).send(JSON.stringify(book, null, 4));
       }).catch((error) => {
           return res.status(404).json({ message: error });
       });
   });
   ```

   **Task 12 (task12.png):** Lines 158-185
   ```javascript
   // Task 12: Get books by author using Promise callbacks
   public_users.get('/promise/author/:author', function (req, res) {
       const author = req.params.author;
       
       const getBooksByAuthor = new Promise((resolve, reject) => {
           const bookKeys = Object.keys(books);
           const matchingBooks = [];

           bookKeys.forEach(key => {
               if (books[key].author.toLowerCase() === author.toLowerCase()) {
                   matchingBooks.push({ isbn: key, ...books[key] });
               }
           });

           if (matchingBooks.length > 0) {
               resolve(matchingBooks);
           } else {
               reject("No books found by this author");
           }
       });

       getBooksByAuthor.then((matchingBooks) => {
           return res.status(200).send(JSON.stringify(matchingBooks, null, 4));
       }).catch((error) => {
           return res.status(404).json({ message: error });
       });
   });
   ```

   **Task 13 (task13.png):** Lines 200-227
   ```javascript
   // Task 13: Get books by title using Promise callbacks
   public_users.get('/promise/title/:title', function (req, res) {
       const title = req.params.title;
       
       const getBooksByTitle = new Promise((resolve, reject) => {
           const bookKeys = Object.keys(books);
           const matchingBooks = [];

           bookKeys.forEach(key => {
               if (books[key].title.toLowerCase() === title.toLowerCase()) {
                   matchingBooks.push({ isbn: key, ...books[key] });
               }
           });

           if (matchingBooks.length > 0) {
               resolve(matchingBooks);
           } else {
               reject("No books found with this title");
           }
       });

       getBooksByTitle.then((matchingBooks) => {
           return res.status(200).send(JSON.stringify(matchingBooks, null, 4));
       }).catch((error) => {
           return res.status(404).json({ message: error });
       });
   });
   ```

---

## Task 14: GitHub Repository

### Step 1: Fork the Repository

1. Visit: https://github.com/ibm-developer-skills-network/expressBookReviews
2. Click the **"Fork"** button (top right)
3. Fork to your account: `inigoomarina/expressBookReviews`

### Step 2: Push Your Code

After forking, run these commands:

```bash
cd /workspaces/PROJECT/expressBookReviews

# Set your forked repo as origin
git remote set-url origin https://github.com/inigoomarina/expressBookReviews.git

# Check status
git status

# If changes are already committed, just push
git push origin main

# If you need to commit first
git add .
git commit -m "Completed all tasks 1-13"
git push origin main
```

### Step 3: Submit the GitHub Link

**URL to submit:** `https://github.com/inigoomarina/expressBookReviews`

---

## Alternative: Manual Testing (If Script Doesn't Work)

If the script has issues, you can run each command manually:

```bash
# Start server
cd /workspaces/PROJECT/expressBookReviews/final_project
node index.js &

# Task 1
curl http://localhost:5000/

# Task 2
curl http://localhost:5000/isbn/1

# Task 3
curl "http://localhost:5000/author/Unknown"

# Task 4
curl "http://localhost:5000/title/Fairy%20tales"

# Task 5
curl http://localhost:5000/review/1

# Task 6
curl -X POST http://localhost:5000/register \
  -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password123"}'

# Task 7
curl -X POST http://localhost:5000/customer/login \
  -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password123"}' \
  -c /tmp/cookies.txt

# Task 8
curl -X PUT "http://localhost:5000/customer/auth/review/1?review=Amazing%20book!" \
  -b /tmp/cookies.txt

# Task 9
curl -X DELETE "http://localhost:5000/customer/auth/review/1" \
  -b /tmp/cookies.txt

# Task 10
curl http://localhost:5000/promise

# Task 11
curl http://localhost:5000/promise/isbn/1

# Task 12
curl "http://localhost:5000/promise/author/Jane%20Austen"

# Task 13
curl "http://localhost:5000/promise/title/Pride%20and%20Prejudice"
```

---

## Quick Reference: What Each Screenshot Should Show

| Task | Screenshot Should Show | File Name |
|------|------------------------|-----------|
| 1 | JSON list of all 10 books | `1-getallbooks.png` |
| 2 | JSON object for book ISBN 1 | `2-getbooksbyISBN.png` |
| 3 | JSON array of books by "Unknown" author | `3-getbooksbyauthor.png` |
| 4 | JSON array with "Fairy tales" book | `4-getbooksbytitle.png` |
| 5 | Empty JSON object {} (no reviews yet) | `5-getbookreview.png` |
| 6 | Success message for registration | `6-register.png` |
| 7 | Success message for login | `7-login.png` |
| 8 | Success message + review object | `8-reviewadded.png` |
| 9 | Success message for deletion | `9-deletereview.png` |
| 10 | CODE: Promise implementation for get all books | `task10.png` |
| 11 | CODE: Promise implementation for ISBN search | `task11.png` |
| 12 | CODE: Promise implementation for author search | `task12.png` |
| 13 | CODE: Promise implementation for title search | `task13.png` |
| 14 | GitHub repository URL | (no screenshot) |

---

## Troubleshooting

### If server is not responding:
```bash
pkill -f "node index.js"
cd /workspaces/PROJECT/expressBookReviews/final_project
node index.js &
sleep 2
```

### If you get "user already exists" error:
Change the username in Task 6 and Task 7 to something different like "testuser2"

### If authentication fails:
Make sure you run Task 7 (login) before Tasks 8 and 9

---

## Final Checklist

- [ ] All 9 API screenshots taken (Tasks 1-9)
- [ ] All 4 code screenshots taken (Tasks 10-13)
- [ ] Repository forked to your GitHub account
- [ ] Code pushed to your repository
- [ ] GitHub URL ready: https://github.com/inigoomarina/expressBookReviews
- [ ] All screenshots named correctly
- [ ] Project title entered: "Book Review Application with REST API and JWT Authentication"

---

Good luck with your submission!
