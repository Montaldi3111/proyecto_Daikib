const db = require("../database/models")
const controller = {
    home: (req, res) => {
        db.Movie.findAll().then(result =>{
            res.send(result)
            // res.render("users/home", {
            //     styles:["/home"],
            //     movies: result
            // })
        }).catch(err => {
            res.send(err)
        })
        
    }
}

module.exports = controller;