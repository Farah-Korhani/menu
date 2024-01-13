const { Schema, model } = require("mongoose");

const DrinksSchema = new Schema({
  name: { type: String, required: true, unique: true },
  description: String,
  price: Number,
});

const Drinks = model("Drinks", DrinksSchema);

// const drinks = [
//   { name: 'Lemonade', description: 'Refreshing citrus drink', price: 4 },
//   { name: 'Iced Tea', description: 'Chilled tea beverage', price: 3 },
//   { name: 'Soda(NA right now)', description: 'Non-alcoholic carbonated drink', price: 2.5 },
//   { name: 'Orange Juice', description: 'Freshly squeezed orange juice', price: 4.5 },
//   { name: 'Apple Juice', description: 'Juice made from apples', price: 4 },
//   { name: 'Cranberry Juice', description: 'Tart cranberry juice', price: 3.5 },
//   { name: 'Sparkling Water', description: 'Bubbly and refreshing water', price: 2 },
// ];

// Drinks.insertMany(drinks)
//   .then(() => {
//     console.log('Drinks inserted successfully');
//   })
//   .catch((error) => {
//     console.error('Error inserting drinks:', error);
//   });




module.exports = Drinks;
