class Food{
  String name ;
  double price;
  Food(this.name,this.price);
  @override
  String toString(){
    return '$name-------------------$price\$';
  }
}

List <Food> burgers = [
  Food('chicken burger', 16),
  Food('beef burger', 25),
  Food('Vegetarian Burger', 12),
  Food('Spicy Jalapeño Burger', 14),
  Food('Mushroom Swiss Burger', 18),
  Food('Classic Burger', 20),
];

List <Food> pasta = [
  Food('Spaghetti Carbonara', 18),
  Food('Fettuccine Alfredo', 16),
  Food('Penne Arrabbiata', 14),
  Food('Linguine Pesto', 15),
  Food('Lasagna Bolognese', 20),
  Food('Ravioli Marinara', 17),
  Food('Tortellini Primavera', 19),
  Food('Macaroni and Cheese', 12),
];

List <Food> pizza = [
  Food('Margherita Pizza', 15),
  Food('Pepperoni Pizza', 18),
  Food('Vegetarian Pizza', 16),
  Food('Hawaiian Pizza', 17),
  Food('BBQ Chicken Pizza', 19),
  Food('Supreme Pizza', 20),
  Food('Mushroom Pizza', 16),
  Food('Buffalo Chicken Pizza', 18),
];

List <Food> drinks = [
  Food('Lemonade', 4),
  Food('Iced Tea', 3),
  Food('Soda(NA right now)', 2.5),
  Food('Orange Juice', 4.5),
  Food('Apple Juice', 4),
  Food('Cranberry Juice', 3.5),
  Food('Sparkling Water', 2),
];