const db = require("../database/models")

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
    },

    list: (req, res) => {
        db.User.findAll().then((users) => {
            res.send(users)
        })
    },

    // CRUD
    // save: (req, res) => {
        // Create user with DB
        // const errors = validator.validationResult(req);
        // console.log(errors);
        // if (!errors.isEmpty()) {
        //   return res.render("users/register", {
        //     errors: errors.mapped(),
        //   });
        // }
    //     Users.findOne({ where: { email: req.body.email } })
    //       .then((userFound) => {
    //         if (!userFound) {
    //           Users.create({
    //             user_name: req.body.user_name,
    //             avatar: req.files[0].filename,
    //             email: String(req.body.email),
    //             password: bcrypt.hashSync(req.body.password, 10),
    //             isAdmin: String(req.body.email).includes("@daikib.com"),
    //           }).then(() => res.render("users/login",{
    //             styles: ["/login"]
    //           }))
    //         } else {
    //           res.render("users/register", {
    //             errors: {
    //               email: {
    //                 msg: "Ese mail ya está en uso",
    //               },
    //             },
    //           });
    //         }
    //       })
    //       .catch((error) => res.send(error));
    
    //   },
    // access: (req, res) => {
    //     // Login with DB
    //     db.User.findOne({
    //       where: {
    //         email: req.body.email,
    //       },
    //     })
    //       .then((user) => {
    //         let errors = validator.validationResult(req);
    
    //         if (!errors.isEmpty()) {
    //           res.render("users/login", {
    //             errors: errors.mapped(),
    //           });
    //         }
    //         if (!user) {
    //           return res.render("users/login", {
    //             styles: ["/login"],
    //             errors: {
    //               email: {
    //                 msg: "Email sin registrar",
    //               },
    //             },
    //           });
    //         }
    
    //         if (!bcrypt.compareSync(req.body.password, user.password)) {
    //           return res.render("users/login", {
    //             styles: ["/login"],
    //             errors: {
    //               password: {
    //                 msg: "Contraseña invalida",
    //               },
    //             },
    //           });
    //         } else {
    //           if (req.body.remember) {
    //             res.cookie("email", req.body.email, {
    //               maxAge: 1000 * 60 * 60 * 24 * 30,
    //             });
    //           }
    //           req.session.user = user;
    //           return res.redirect("/users/profile");
    //         }
    //       })
    
    //       .catch((error) => res.send(error));
    
     
    //   },

}

module.exports = controller;