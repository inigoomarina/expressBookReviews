#!/bin/bash

clear
cat << "EOF"
╔════════════════════════════════════════════════════════════════════╗
║                                                                    ║
║     📚 BOOK REVIEW APPLICATION - SUBMISSION GUIDE 📚              ║
║                                                                    ║
╚════════════════════════════════════════════════════════════════════╝

✅ YOUR CODE IS COMPLETE! Here's how to submit:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📸 STEP 1: TAKE SCREENSHOTS FOR TASKS 1-9 (API ENDPOINTS)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Run this command in your terminal:

    cd /workspaces/PROJECT/expressBookReviews/final_project
    ./test_all_tasks.sh

The script will show each task one by one.
After each task appears, take a screenshot and press Enter.

You'll get these files:
  ✓ 1-getallbooks.png
  ✓ 2-getbooksbyISBN.png
  ✓ 3-getbooksbyauthor.png
  ✓ 4-getbooksbytitle.png
  ✓ 5-getbookreview.png
  ✓ 6-register.png
  ✓ 7-login.png
  ✓ 8-reviewadded.png
  ✓ 9-deletereview.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💻 STEP 2: TAKE CODE SCREENSHOTS FOR TASKS 10-13
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Open this file: router/general.js

Take screenshots of these code sections:

📄 task10.png - Lines 96-109
   (Promise implementation for getting all books)

📄 task11.png - Lines 125-143
   (Promise implementation for ISBN search)

📄 task12.png - Lines 158-185
   (Promise implementation for author search)

📄 task13.png - Lines 200-227
   (Promise implementation for title search)

TIP: Look for comments like "// Task 10:", "// Task 11:", etc.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔧 STEP 3: PUSH YOUR CODE TO GITHUB
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

A. Create a new repository on GitHub:
   1. Go to: https://github.com/new
   2. Repository name: expressBookReviews
   3. Make it Public
   4. Click "Create repository"

B. Push your code:

    cd /workspaces/PROJECT/expressBookReviews
    git remote set-url origin https://github.com/inigoomarina/expressBookReviews.git
    git push -u origin main

   (You may need to enter your GitHub credentials)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📤 STEP 4: SUBMIT YOUR PROJECT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

In the submission form:

📝 Project Title:
   "Book Review Application with REST API and JWT Authentication"

📷 Upload Screenshots:
   - Task 1: 1-getallbooks.png
   - Task 2: 2-getbooksbyISBN.png
   - Task 3: 3-getbooksbyauthor.png
   - Task 4: 4-getbooksbytitle.png
   - Task 5: 5-getbookreview.png
   - Task 6: 6-register.png
   - Task 7: 7-login.png
   - Task 8: 8-reviewadded.png
   - Task 9: 9-deletereview.png
   - Task 10: task10.png (code screenshot)
   - Task 11: task11.png (code screenshot)
   - Task 12: task12.png (code screenshot)
   - Task 13: task13.png (code screenshot)

🔗 GitHub URL (Task 14):
   https://github.com/inigoomarina/expressBookReviews

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 QUICK CHECKLIST
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Before submitting, make sure you have:
  ☐ 9 API endpoint screenshots (Tasks 1-9)
  ☐ 4 code screenshots (Tasks 10-13)
  ☐ GitHub repository created and code pushed
  ☐ Correct project title entered
  ☐ All files named correctly

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Press Enter to start taking screenshots...
EOF

read
cd /workspaces/PROJECT/expressBookReviews/final_project
./test_all_tasks.sh
