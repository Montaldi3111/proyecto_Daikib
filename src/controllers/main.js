const controller = {
    home: (req, res) => {
        res.render("users/home", {
            styles:["/home"]
        })
    }
}

module.exports = controller;