import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
// list of burgers
final List burgersOnSale = const[
// [ donutFlavor, donutPrice, donutColor, imageName ]
["Double", "150", Colors.blue, "lib/images/burguer.png"],
["Combo", "130", Colors.red, "lib/images/hamburguesa.png"],
["Simple Combo", "95", Colors.purple, "lib/images/hamburguesa6.png"],
["Normal", "55", Colors.brown, "lib/images/hamburguesa1.png"],
["Deluxe", "120", Colors.blue, "lib/images/hamburguesa2.png"],
["Big", "110", Colors.red, "lib/images/hamburguesa3.png"],
["Vegan", "95", Colors.purple, "lib/images/hamburguesa4.png"],
["Junior", "40", Colors.brown, "lib/images/hamburguesa5.png"],
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