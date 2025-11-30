const express = require('express');
const axios = require('axios');
let books = require("./booksdb.js");
let isValid = require("./auth_users.js").isValid;
let users = require("./auth_users.js").users;
const public_users = express.Router();


public_users.post("/register", (req,res) => {
    const username = req.body.username;
    const password = req.body.password;

    // Check if both username and password are provided
    if (!username || !password) {
        return res.status(400).json({ message: "Username and password are required" });
    }

    // Check if the username already exists
    const userExists = users.some(user => user.username === username);
    if (userExists) {
        return res.status(409).json({ message: "Username already exists" });
    }

    // Register the new user
    users.push({ username: username, password: password });
    return res.status(200).json({ message: "User successfully registered. Now you can login" });
});

// Get the book list available in the shop
public_users.get('/',function (req, res) {
    return res.status(200).send(JSON.stringify(books, null, 4));
});

// Get book details based on ISBN
public_users.get('/isbn/:isbn',function (req, res) {
    const isbn = req.params.isbn;
    const book = books[isbn];
    
    if (book) {
        return res.status(200).send(JSON.stringify(book, null, 4));
    } else {
        return res.status(404).json({ message: "Book not found" });
    }
 });
  
// Get book details based on author
public_users.get('/author/:author',function (req, res) {
    const author = req.params.author;
    const bookKeys = Object.keys(books);
    const matchingBooks = [];

    bookKeys.forEach(key => {
        if (books[key].author.toLowerCase() === author.toLowerCase()) {
            matchingBooks.push({ isbn: key, ...books[key] });
        }
    });

    if (matchingBooks.length > 0) {
        return res.status(200).send(JSON.stringify(matchingBooks, null, 4));
    } else {
        return res.status(404).json({ message: "No books found by this author" });
    }
});

// Get all books based on title
public_users.get('/title/:title',function (req, res) {
    const title = req.params.title;
    const bookKeys = Object.keys(books);
    const matchingBooks = [];

    bookKeys.forEach(key => {
        if (books[key].title.toLowerCase() === title.toLowerCase()) {
            matchingBooks.push({ isbn: key, ...books[key] });
        }
    });

    if (matchingBooks.length > 0) {
        return res.status(200).send(JSON.stringify(matchingBooks, null, 4));
    } else {
        return res.status(404).json({ message: "No books found with this title" });
    }
});

//  Get book review
public_users.get('/review/:isbn',function (req, res) {
    const isbn = req.params.isbn;
    const book = books[isbn];
    
    if (book) {
        return res.status(200).send(JSON.stringify(book.reviews, null, 4));
    } else {
        return res.status(404).json({ message: "Book not found" });
    }
});

// Task 10: Get all books using async-await with Axios
public_users.get('/async', async function (req, res) {
    try {
        const response = await axios.get('http://localhost:5000/');
        return res.status(200).send(response.data);
    } catch (error) {
        return res.status(500).json({ message: "Error fetching books" });
    }
});

// Alternative: Get all books using Promise callbacks
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

// Task 11: Get book by ISBN using async-await with Axios
public_users.get('/async/isbn/:isbn', async function (req, res) {
    try {
        const isbn = req.params.isbn;
        const response = await axios.get(`http://localhost:5000/isbn/${isbn}`);
        return res.status(200).send(response.data);
    } catch (error) {
        return res.status(404).json({ message: "Book not found" });
    }
});

// Alternative: Get book by ISBN using Promise callbacks
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

// Task 12: Get books by author using async-await with Axios
public_users.get('/async/author/:author', async function (req, res) {
    try {
        const author = req.params.author;
        const response = await axios.get(`http://localhost:5000/author/${author}`);
        return res.status(200).send(response.data);
    } catch (error) {
        return res.status(404).json({ message: "No books found by this author" });
    }
});

// Alternative: Get books by author using Promise callbacks
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

// Task 13: Get books by title using async-await with Axios
public_users.get('/async/title/:title', async function (req, res) {
    try {
        const title = req.params.title;
        const response = await axios.get(`http://localhost:5000/title/${title}`);
        return res.status(200).send(response.data);
    } catch (error) {
        return res.status(404).json({ message: "No books found with this title" });
    }
});

// Alternative: Get books by title using Promise callbacks
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

module.exports.general = public_users;
