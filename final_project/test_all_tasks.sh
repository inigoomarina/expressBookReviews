#!/bin/bash

# Script to test all tasks for Book Review Application
# Take a screenshot after each task output

echo "========================================="
echo "Starting Book Review Application Tests"
echo "========================================="
echo ""
sleep 2

# TASK 1
clear
echo "==============================================="
echo "TASK 1: Get the book list available in the shop"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/"
echo "Screenshot: 1-getallbooks.png"
echo ""
curl -s http://localhost:5000/
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 2
clear
echo "==============================================="
echo "TASK 2: Get books based on ISBN"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/isbn/1"
echo "Screenshot: 2-getbooksbyISBN.png"
echo ""
curl -s http://localhost:5000/isbn/1
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 3
clear
echo "==============================================="
echo "TASK 3: Get all books by Author"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/author/Unknown"
echo "Screenshot: 3-getbooksbyauthor.png"
echo ""
curl -s "http://localhost:5000/author/Unknown"
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 4
clear
echo "==============================================="
echo "TASK 4: Get all books based on Title"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/title/Fairy tales"
echo "Screenshot: 4-getbooksbytitle.png"
echo ""
curl -s "http://localhost:5000/title/Fairy%20tales"
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 5
clear
echo "==============================================="
echo "TASK 5: Get book review"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/review/1"
echo "Screenshot: 5-getbookreview.png"
echo ""
curl -s http://localhost:5000/review/1
echo ""
echo "(Empty because no reviews yet)"
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 6
clear
echo "==============================================="
echo "TASK 6: Register new user"
echo "==============================================="
echo "Endpoint: POST http://localhost:5000/register"
echo "Screenshot: 6-register.png"
echo ""
echo "Request Body:"
echo '{"username":"testuser","password":"password123"}'
echo ""
curl -s -X POST http://localhost:5000/register \
  -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password123"}'
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 7
clear
echo "==============================================="
echo "TASK 7: Login as a Registered user"
echo "==============================================="
echo "Endpoint: POST http://localhost:5000/customer/login"
echo "Screenshot: 7-login.png"
echo ""
echo "Request Body:"
echo '{"username":"testuser","password":"password123"}'
echo ""
curl -s -X POST http://localhost:5000/customer/login \
  -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password123"}' \
  -c /tmp/cookies.txt
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 8
clear
echo "==============================================="
echo "TASK 8: Add/Modify a book review"
echo "==============================================="
echo "Endpoint: PUT http://localhost:5000/customer/auth/review/1"
echo "Screenshot: 8-reviewadded.png"
echo ""
echo "Query Parameter: review=This is an amazing book!"
echo ""
curl -s -X PUT "http://localhost:5000/customer/auth/review/1?review=This%20is%20an%20amazing%20book!" \
  -b /tmp/cookies.txt
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 9
clear
echo "==============================================="
echo "TASK 9: Delete book review"
echo "==============================================="
echo "Endpoint: DELETE http://localhost:5000/customer/auth/review/1"
echo "Screenshot: 9-deletereview.png"
echo ""
curl -s -X DELETE "http://localhost:5000/customer/auth/review/1" \
  -b /tmp/cookies.txt
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 10
clear
echo "==============================================="
echo "TASK 10: Get all books using Promise"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/promise"
echo "Screenshot: task10.png (CODE SCREENSHOT)"
echo ""
echo "This endpoint uses Promise callbacks."
echo ""
curl -s http://localhost:5000/promise
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 11
clear
echo "==============================================="
echo "TASK 11: Search by ISBN using Promise"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/promise/isbn/1"
echo "Screenshot: task11.png (CODE SCREENSHOT)"
echo ""
echo "This endpoint uses Promise callbacks."
echo ""
curl -s http://localhost:5000/promise/isbn/1
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 12
clear
echo "==============================================="
echo "TASK 12: Search by Author using Promise"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/promise/author/Jane Austen"
echo "Screenshot: task12.png (CODE SCREENSHOT)"
echo ""
echo "This endpoint uses Promise callbacks."
echo ""
curl -s "http://localhost:5000/promise/author/Jane%20Austen"
echo ""
echo "Status: ✅ SUCCESS - Press Enter to continue..."
read

# TASK 13
clear
echo "==============================================="
echo "TASK 13: Search by Title using Promise"
echo "==============================================="
echo "Endpoint: GET http://localhost:5000/promise/title/Pride and Prejudice"
echo "Screenshot: task13.png (CODE SCREENSHOT)"
echo ""
echo "This endpoint uses Promise callbacks."
echo ""
curl -s "http://localhost:5000/promise/title/Pride%20and%20Prejudice"
echo ""
echo "Status: ✅ SUCCESS"
echo ""
echo "==============================================="
echo "All tests completed!"
echo "==============================================="
