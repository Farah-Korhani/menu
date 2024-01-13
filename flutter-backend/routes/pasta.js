const router = require("express").Router();
const getPasta = require("../controllers/getPasta");
router.get("/pasta", getPasta);

module.exports = router;
