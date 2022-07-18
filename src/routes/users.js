const express = require("express")
const router = express.Router();
const usersController = require("../controllers/users")

router.get("/login", usersController.login)
router.get("/register", usersController.register)
router.get("/users/list", usersController.list)


module.exports = router;
