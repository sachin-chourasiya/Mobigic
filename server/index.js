const express = require('express');

const mysql = require("mysql");
const cors = require('cors');
const app = express();
app.use(express.json());
app.use(cors());
const db = mysql.createConnection({
    user:"root",
    host:"localhost",
    password:"",
    database:"ragistration",
});

app.post("/Signin",(req,res)=>{
    const username = req.body.username;
    const password = req.body.password;

    db.query('insert into ragis (username,password) values (?,?)',[username,password],(err,result)=>{
        console.log(err);
    });
});
app.post("/User",(req,res)=>{
    const image = req.body.image;
    

    db.query('insert into image (image) values (?)',[image],(err,result)=>{
        console.log(err);
    });
});

app.post("/Login",(req,res)=>{
    const username = req.body.username;
    const password = req.body.password;

    db.query("select * from ragis where username = ? and password=?",[username,password],(err,result)=>{
        if(err){
            res.send({err:err});
        }else{
            if(result){
               res.send(result); 
            }else{
                res.send({message :"User Not Exist..."});
            }
        }
    });
})

app.post("/User",(req,res)=>{
    const image = req.body.image;

    db.query("select * from image where image",[image],(err,result)=>{
        if(err){
            res.send({err:err});
        }else{       
            res.send(result); 
        }
    });
})

app.listen(5000,()=>{
    console.log("Conncted");
});
