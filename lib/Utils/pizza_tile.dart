import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor; //dynamic porque sera de tipo color
  final String imagePizza;
  final VoidCallback onAdd;

const PizzaTile(
  {super.key,
  required this.pizzaFlavor,
  required this.pizzaPrice,
  this.pizzaColor,
  required this.imagePizza,
  required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(color: pizzaColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
              decoration: BoxDecoration(
              color: pizzaColor[100],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24))),
            padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Text(
            '\$$pizzaPrice',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: pizzaColor[800],
                  ),
                ),
        ),
          ]
          ),
            //Donut picture
            Padding(
             padding: 
             const EdgeInsets.symmetric(horizontal:40, vertical:17),
             child: Image.asset(imagePizza),
        ),

            //Donut flavor text
            Text(
              pizzaFlavor,
              style: 
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              ),

                Text(
                  "Dominos",
                  style: TextStyle(color: Colors.grey[600]),
                ),

            //love icon + add buttom
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //love icon
                Icon(Icons.favorite, color: Colors.pink[400]),
                 //Plus buttom
                IconButton(
                  icon: Icon(Icons.add, color: Colors.grey[800]),
                  onPressed: onAdd, // Llamar al método para añadir el item
                  ),
              ],

        ))],
      )),
    );

  }
}