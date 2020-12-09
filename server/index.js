const express=require("express");
const cors=require("cors");

const app=express();

// Middlewares
app.use(express.json()); // req.body
app.use(cors());

//ROUTES

// register and login routes
app.use('/auth', require("./routes/jwtAuth"));


app.listen(5000,()=>{
    console.log("Server running on PORT 5000")
});
