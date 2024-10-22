import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
// list of burgers
final List burgersOnSale = const[
// [ donutFlavor, donutPrice, donutColor, imageName ]
["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
];
 
const BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    // delegate sirve para organizar los widgets en la cuadricula
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
     itemBuilder: (context, index){
      return BurgerTile(
        burgerFlavor: burgersOnSale[index][0],
        burgerPrice: burgersOnSale[index][1],
        burgerColor: burgersOnSale[index][2],
        imageBurger: burgersOnSale[index][3],
      );
      });
  }
}