const { Schema, model } = require("mongoose");

const BurgerSchema = new Schema({
  name: { type: String, required: true, unique: true },
  description: String,
  price: Number,
});

const Burger = model("Burger", BurgerSchema);

// const burgers = [
//   {
//     name: "Chicken Burger",
//     description: "Delicious chicken patty with lettuce and mayo",
//     price: 16,
//   },
//   {
//     name: "Beef Burger",
//     description: "Juicy beef patty with cheese and pickles",
//     price: 25,
//   },
//   {
//     name: "Vegetarian Burger",
//     description: "Healthy veggie patty with fresh vegetables",
//     price: 12,
//   },
//   {
//     name: "Spicy Jalapeño Burger",
//     description: "Hot and spicy burger with jalapeños and pepper jack cheese",
//     price: 14,
//   },
//   {
//     name: "Mushroom Swiss Burger",
//     description: "Savory burger topped with mushrooms and Swiss cheese",
//     price: 18,
//   },
//   {
//     name: "Classic Burger",
//     description: "Traditional burger with lettuce, tomato, and onion",
//     price: 20,
//   },
// ];

// Burger.insertMany(burgers)
//   .then(() => {
//     console.log("Burger data inserted successfully");
//   })
//   .catch((error) => {
//     console.error("Error inserting burger data:", error);
//   });

module.exports = Burger;
