import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  // list of pizzas
final List pizzasOnSale = const[
// [ pizzaFlavor, pizzaPrice, pizzaColor, imagePizza ]
["Mushroom", "85", Colors.blue, "lib/images/pizza.png"],
["Special", "70", Colors.red, "lib/images/pizza2.png"],
["Vegan", "84", Colors.purple, "lib/images/pizza3.png"],
["Triple Chesse", "95", Colors.brown, "lib/images/pizza4.png"],
["Peperoni", "85", Colors.blue, "lib/images/pizza5.png"],
["Deluxe", "120", Colors.red, "lib/images/pizza6.png"],
["Peperoni slide", "25", Colors.purple, "lib/images/pizza7.png"],
["Deluxe slide", "35", Colors.brown, "lib/images/pizza8.png"],
];
const PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    // delegate sirve para organizar los widgets en la cuadricula
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
     itemBuilder: (context, index){
      return PizzaTile(
        pizzaFlavor: pizzasOnSale[index][0],
        pizzaPrice: pizzasOnSale[index][1],
        pizzaColor: pizzasOnSale[index][2],
        imagePizza: pizzasOnSale[index][3],
      );
      });
  }
}
