import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/pancake_tile.dart';

class PancakesTab extends StatelessWidget {
// list of pancakes
final List pancakesOnSale = const[
// [ pancakeFlavor, pancakePrice, pancakeColor, imagePancake ]
["Normal", "36", Colors.blue, "lib/images/pancake1.png"],
["Peach", "45", Colors.red, "lib/images/pancake2.png"],
["Strawberry", "40", Colors.purple, "lib/images/pancake3.png"],
["Vegan", "65", Colors.brown, "lib/images/pancake4.png"],
["blueberry", "45", Colors.blue, "lib/images/pancake5.png"],
["butter", "35", Colors.red, "lib/images/pancake6.png"],
["Choco", "50", Colors.purple, "lib/images/pancake7.png"],
["Ice Cream", "80", Colors.brown, "lib/images/pancake8.png"],
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