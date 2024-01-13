const Burger = require("../models/Burger");

const getBurger = async (req, res) => {
  try {
    console.log("getBurgers");
    const burger = await Burger.find();
    res.status(200).json({ burger });
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Something went wrong" });
  }
};
module.exports = getBurger;
