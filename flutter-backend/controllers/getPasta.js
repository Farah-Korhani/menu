const Pasta = require("../models/Pasta");

const getPasta = async (req, res) => {
  try {
    console.log("getPastas");
    const pasta = await Pasta.find();
    res.status(200).json({ pasta });
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Something went wrong" });
  }
};
module.exports = getPasta;
