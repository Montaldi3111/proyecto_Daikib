const db = require("../database/models")
const controller = {
    home: (req, res) => {
        db.Movie.findAll({
            include: [{
                association: "generos"
            }]
        }).then(peliculas =>{
            db.Genre.findAll().then(generos => {
                res.render("users/home", {
                    styles:["/home"],
                    movies: peliculas,
                    genero: generos 
                })
            })
            
        }).catch(err => {
            res.send(err)
        })
        
    }
}

module.exports = controller;