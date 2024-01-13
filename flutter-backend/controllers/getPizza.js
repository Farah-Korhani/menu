const Pizza = require("../models/Pizza");

const getPizza = async (req, res) => {
  try {
    console.log("getPizzas");
    const pizza = await Pizza.find();
    res.status(200).json({ pizza });
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Something went wrong" });
  }
};
module.exports = getPizza;
