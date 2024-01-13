const Drinks = require("../models/Drinks");
const getDrinks = async (req, res) => {
  try {
    console.log("getDrinkss");
    const drinks = await Drinks.find();
    res.status(200).json({ drinks });
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Something went wrong" });
  }
};
module.exports = getDrinks;
