const controller = {
    login: (req, res) => {
        res.render("users/login", {
            styles:["/login"]
        })
    },
    register: (req, res) => {
        res.render("users/register",{
            styles:["/register"]
        })
    }
}

module.exports = controller;