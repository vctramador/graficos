const express = require("express")
const dotenv = require("dotenv")
dotenv.config()

//conexão com o banco de dados
const connection = require("./db.js")

const app = express()
const port = process.env.PORT || 8080

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.get("/", (req, res) => {
    res.redirect("/login")
})

app.get("/login", (req, res) => {
    res.sendFile("views/login.html", { root: __dirname })
})

app.get("/registro", (req, res) => {
    res.sendFile("views/registro.html", { root: __dirname })
})

app.get("/painel", (req, res) => {
    res.sendFile("views/painel.html", { root: __dirname })
})

app.get("/financas", async (req, res) => {
    try {
      const sql = "SELECT * FROM usuarios";
      const [response] = await connection.query(sql);
  
      if (response.length > 0) {
        res.json(response);
      } else {
        res.status(404).send("Nenhum usuário encontrado");
      }
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
      res.status(500).send("Erro ao buscar dados");
    }
  });

app.post("/login", async (req, res) => {
    const { email, senha } = req.body
    try {
        //pegando usuario
        const [response] = await connection.query(
            "SELECT * FROM usuarios1 WHERE email = ?",
            [email]
        )

        // se a array estiver vazia, retorna usuario não encontrado
        if (response.length <= 0) {
            res.status(500).send("Usuario nao foi encontrado")
        }

        //verificar a senha
        if (response[0].password == senha) {
            res.send("Login feito com sucesso!")
        }
        //cancela o resto da função
        res.send("Senha incorreta!")
    } catch (error) {
        console.log("Erro ao logar o usuario!")
        console.log(error)
    }
})

app.post("/registro", async (req, res) => {
    try {
        const { name, email, password } = req.body

        await connection.query(
            "INSERT INTO usuarios1 VALUES (null, ?, ?, ?);",
            [name, email, password]
        )

        console.log("usuario adicionado!")
        res.redirect("/login")
    } catch (error) {
        console.error("Erro ao salvar usuário:", error)
        res.status(500).send({ message: "Erro ao criar usuário" })
    }
})

app.get("*", (req, res) => {
    res.status(404).send("Esta página não existe!")
})

app.listen(port, () => {
    console.log(`Servidor iniciado na porta ${port}`)
})

