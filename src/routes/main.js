const express = require("express")
const router = express.Router();
const mainController = require("../controllers/main")

// Routes
router.get("/", mainController.home)

// Routes with parameter
router.get("/video/:id", mainController.video)

module.exports = router;

