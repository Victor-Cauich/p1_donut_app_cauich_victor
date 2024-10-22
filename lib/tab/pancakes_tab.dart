import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/pancake_tile.dart';

class PancakesTab extends StatelessWidget {
// list of pancakes
final List pancakesOnSale = const[
// [ pancakeFlavor, pancakePrice, pancakeColor, imagePancake ]
["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
];
const PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    // delegate sirve para organizar los widgets en la cuadricula
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
     itemBuilder: (context, index){
      return PancakeTile(
        pancakeFlavor: pancakesOnSale[index][0],
        pancakePrice: pancakesOnSale[index][1],
        pancakeColor: pancakesOnSale[index][2],
        imagePancake: pancakesOnSale[index][3],
      );
      });
  }
}