import express from "express";
import bodyParser from "body-parser";
import bcrypt from "bcrypt";

const app = express();
const PORT = 3000;

app.use(bodyParser.json());

let users = [{
   "username" : "sk",
   "password" : "123456",
   "email" : "s@s.s"
}];

app.post('/users/register', (req, res) => {
   try {
     const { username, password, email } = req.body;
     const newUser = { username, password, email };
     // Check if username already exists
     if (users.find(user => user.username === username)) {
         res.status(200).json({ message: 'User registered successfully', data: newUser });
     }
 
     // Store the user in the database
     
     users.push(newUser);
     
     console.error(users);
     res.status(200).json({ message: 'User registered successfully', data: newUser });
   } catch (error) {
     console.error(error);
     res.status(500).json({ error: 'Internal server error' });
   }
 });

// Login Endpoint
app.post('/users/login', (req, res) => {
   try {
     const { username, password } = req.body;
 
     // Find user by username
     const user = users.find(user => user.username === username);
     console.error(users);
     if (!user) {
       return res.status(401).json({ error: 'Invalid credentials' });
     }
 
     // Check password
     if (user.password !== password) {
       return res.status(401).json({ error: 'Invalid credentials' });
     }
 
     return res.status(200).json({ message: 'Login successful' });
   } catch (error) {
     console.error(error);
     res.status(500).json({ error: 'Internal server error' });
   }
 });

app.get('/', (req, res) => {
   res.send('Hello, this is your Node.js server!');
 });

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
