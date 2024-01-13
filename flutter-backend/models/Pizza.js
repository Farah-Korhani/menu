const { Schema, model } = require("mongoose");
const PizzaSchema = new Schema({
  name: { type: String, required: true, unique: true },
  description: String,
  price: Number,
});

const Pizza = model("Pizza", PizzaSchema);

// const pizza = [
//   {
//     name: "Margherita Pizza",
//     description:
//       "Classic pizza with tomato sauce, mozzarella cheese, and fresh basil",
//     price: 15,
//   },
//   {
//     name: "Pepperoni Pizza",
//     description: "Pizza topped with pepperoni slices and mozzarella cheese",
//     price: 18,
//   },
//   {
//     name: "Vegetarian Pizza",
//     description: "Pizza loaded with various vegetables and mozzarella cheese",
//     price: 16,
//   },
//   {
//     name: "Hawaiian Pizza",
//     description: "Pizza topped with ham, pineapple, and mozzarella cheese",
//     price: 17,
//   },
//   {
//     name: "BBQ Chicken Pizza",
//     description:
//       "Pizza topped with BBQ chicken, red onions, and mozzarella cheese",
//     price: 19,
//   },
//   {
//     name: "Supreme Pizza",
//     description:
//       "Pizza loaded with various toppings including pepperoni, sausage, onions, peppers, and olives",
//     price: 20,
//   },
//   {
//     name: "Mushroom Pizza",
//     description: "Pizza topped with mushrooms and mozzarella cheese",
//     price: 16,
//   },
//   {
//     name: "Buffalo Chicken Pizza",
//     description:
//       "Pizza topped with buffalo chicken, blue cheese, and mozzarella cheese",
//     price: 18,
//   },
// ];

// Pizza.insertMany(pizza)
//   .then(() => {
//     console.log("Pizza data inserted successfully");
//   })
//   .catch((error) => {
//     console.error("Error inserting pizza data:", error);
//   });

module.exports = Pizza;
