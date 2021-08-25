const express= require('express')
const app= express()
const port= process.env.PORT || 5010
require('dotenv').config()

// conexão com o DB
const { Pool } = require('pg')
const pool = new Pool({
    host: process.env.PGHOST,
    user: process.env.PGUSER,
    password: process.env.PGPASSWORD,
    database: process.env.PGDATABASE
})
pool.connect()

// middleware
app.use(express.static('public'))
app.use(express.urlencoded({extend:true}))
app.use(express.json())

// ********* Endpoint de consultas
app.get('/', (req, res)=>{
    res.sendFile('index.html')
})

app.get('/flights', async(req, res)=>{
    try {
        const api= await pool.query(`select * from vooAgendados`)
        res.json(api.rows) 
    } catch (error) {
        console.log('ERROR AO CONECTAR COM O DB', error)
    }
})

app.get('/flights/:from', async(req, res)=>{

     try {
         const api= await pool.query(`select * from vooAgendados 
         where cidadedepartida= '${req.params.from}'`)
         res.json(api.rows)
     } catch (error) {
         console.log('ERROR AO CONECTAR COM O DB', error)
     }
})

// POST 
app.post('/flights', async (req, res)=>{
    try {
    const {cidadedepartida, cidadedestino, date, hora, companhiaaerea} = req.body  
    const datahora= date + ' ' + hora;
     
    const sql= `INSERT INTO vooAgendados (cidadedepartida, cidadedestino, datahora, companhiaaerea) 
    values ('${cidadedepartida}', '${cidadedestino}', '${datahora}', '${companhiaaerea}')`
    const addItems= await pool.query(sql)
     res.redirect('/')
    }catch (error) {
      throw error
    }
})

app.listen(port, (err) => {
     if(!err){
         console.log(`SERVER ON http://localhost:${port}`)
     }else{
         throw err
     }
})