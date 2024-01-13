const router = require("express").Router();
const getPizza = require("../controllers/getPizza");
router.get("/pizza", getPizza);

module.exports = router;
