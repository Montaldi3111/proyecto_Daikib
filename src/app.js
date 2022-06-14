const express = require("express");
const app = express();
const path = require("path");

app.set("port", process.env.PORT || 3000);
app.listen(app.get("port"), () => {
    console.log("Running server on https://localhost:" + app.get("port"))
})

app.set("views", path.resolve(__dirname, "views"))
app.use(express.static(path.resolve(__dirname, "../public")))
app.set("view engine", "ejs")
app.use(express.urlencoded({extended: true}))
app.use(express.json())

// Routes

const mainRoutes = require("./routes/main");
app.use(mainRoutes);

const usersRoutes = require("./routes/users");
app.use(usersRoutes);