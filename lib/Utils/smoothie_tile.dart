import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic smoothieColor; //dynamic porque sera de tipo color
  final String imageSmoothie;

const SmoothieTile(
  {super.key,
  required this.smoothieFlavor,
  required this.smoothiePrice,
  this.smoothieColor,
  required this.imageSmoothie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(color: smoothieColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
              decoration: BoxDecoration(
              color: smoothieColor[100],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24))),
            padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Text(
            smoothiePrice,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: smoothieColor[800],
                  ),
                ),
        ),
          ]
          ),
            //Donut picture
            Padding(
             padding: 
             const EdgeInsets.symmetric(horizontal:40, vertical:17),
             child: Image.asset(imageSmoothie),
        ),

            //Donut flavor text
            Text(
              smoothieFlavor,
              style: 
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              ),

                Text(
                  "Dunkins",
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
                Icon(Icons.add, color: Colors.grey[800]),
              ],

        ))],
      )),
    );

  }
}