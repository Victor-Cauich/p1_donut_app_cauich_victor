import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onItemAdded;

  // list of smoothies
final List smoothiesOnSale = const[
// [ smoothieFlavor, smoothiePrice, smoothieColor, imageSmoothie ]
["Special", "36", Colors.blue, "lib/images/smoothie1.png"],
["Healthy", "45", Colors.red, "lib/images/smoothie2.png"],
["Strawberry", "26", Colors.purple, "lib/images/smoothie3.png"],
["Grape", "35", Colors.brown, "lib/images/smoothie4.png"],
["Watermelon", "50", Colors.blue, "lib/images/smoothie5.png"],
["Banana", "25", Colors.red, "lib/images/smoothie6.png"],
["Blueberry", "45", Colors.purple, "lib/images/smoothie7.png"],
["Coco", "36", Colors.brown, "lib/images/smoothie8.png"],
];
const SmoothieTab({super.key, required this.onItemAdded});

  @override
Widget build(BuildContext context) {
    // delegate sirve para organizar los widgets en la cuadricula
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
     itemBuilder: (context, index){
      return SmoothieTile(
        smoothieFlavor: smoothiesOnSale[index][0],
        smoothiePrice: smoothiesOnSale[index][1],
        smoothieColor: smoothiesOnSale[index][2],
        imageSmoothie: smoothiesOnSale[index][3],
        onAdd: () {
          onItemAdded(double.parse(smoothiesOnSale[index][1]));
        }
      );
      });
  }
}