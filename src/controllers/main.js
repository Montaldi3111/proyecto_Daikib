const db = require("../database/models")
const controller = {
    home: (req, res) => {
        db.Movie.findAll({
            include: [{
                association: "generos"
            }]
        }).then(peliculas =>{
            db.Genre.findAll({
                include: [{
                    association: "movie"
                }]
            }).then(generos => {
                res.render("users/home", {
                    styles:["/home"],
                    movies: peliculas,
                    genero: generos
                })
            })
            
        }).catch(err => {
            res.send(err)
        })
        
    },

    video: (req, res) => {
        db.Movie.findByPk(req.params.id)
        .then((result) => {
            res.render("video/video", {
                styles: ["/video"],
                video: result
            })
        })
    },

    
}

module.exports = controller;