const { Schema, model } = require("mongoose");
const PastaSchema = new Schema({
  name: { type: String, required: true, unique: true },
  description: String,
  price: Number,
});

const Pasta = model("Pasta", PastaSchema);

// const pastaData = [
//   {
//     name: "Spaghetti Carbonara",
//     description: "Creamy pasta with bacon and eggs",
//     price: 18,
//   },
//   {
//     name: "Fettuccine Alfredo",
//     description: "Rich and creamy pasta with Parmesan cheese",
//     price: 16,
//   },
//   {
//     name: "Penne Arrabbiata",
//     description: "Spicy tomato sauce with penne pasta",
//     price: 14,
//   },
//   {
//     name: "Linguine Pesto",
//     description: "Pasta with fresh basil pesto sauce",
//     price: 15,
//   },
//   {
//     name: "Lasagna Bolognese",
//     description: "Layered pasta with meat sauce and cheese",
//     price: 20,
//   },
//   {
//     name: "Ravioli Marinara",
//     description: "Stuffed pasta with tomato sauce",
//     price: 17,
//   },
//   {
//     name: "Tortellini Primavera",
//     description: "Pasta with mixed vegetables",
//     price: 19,
//   },
//   {
//     name: "Macaroni and Cheese",
//     description: "Classic cheesy pasta dish",
//     price: 12,
//   },
// ];

// Pasta.insertMany(pastaData)
//   .then(() => {
//     console.log("Pasta data inserted successfully");
//   })
//   .catch((error) => {
//     console.error("Error inserting pasta data:", error);
//   });

module.exports = Pasta;
