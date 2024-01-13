const router = require("express").Router();
const getBurger = require("../controllers/getBurger");
router.get("/burger", getBurger);

module.exports = router;
