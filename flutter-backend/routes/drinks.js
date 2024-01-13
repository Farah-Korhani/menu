const router = require("express").Router();
const getDrinks = require("../controllers/getDrinks");
router.get("/drinks", getDrinks);

module.exports = router;
