const express = require('express')
const dotenv = require('dotenv').config()
const app = express()
const port = 3000

var places = require('./places.js');

app.get('/', places.query);

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
