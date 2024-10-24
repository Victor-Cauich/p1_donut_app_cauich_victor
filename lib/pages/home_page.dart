import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/my_tab.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancakes_tab.dart';
import '../tab/pizza_Tab.dart';
import '../tab/smoothie_Tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

 @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> myTabs =[
  //donut tab
   const MyTab(iconPath: 'lib/icons/donut.png',),
  //burger tab
   const MyTab(iconPath: 'lib/icons/burger.png',),
  //smothie tab
  const MyTab(iconPath: 'lib/icons/smoothie.png'),
  //pizza tab
  const MyTab(iconPath: 'lib/icons/pancakes.png',),
   //pancakes
  const MyTab(iconPath: 'lib/icons/pizza.png',) 
];

class _HomePageState extends State<HomePage> {

  int totalItems = 0;
  double totalPrice = 0.0;

// añadir un articulo al carrito
void addItem(double price){
  setState(() {
    totalItems++;
    totalPrice += price;
    });
   }


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController( 
      length: 5, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800]
                   ),
          ),
         actions: const[Padding(
           padding: EdgeInsets.only(right: 25.0),
           child: Icon(Icons.person),
         )
         ],
       ),
       body: Column(children: [
        //texto "i want to eat"
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Text("I want to ", style: TextStyle(fontSize: 24), ),
              Text("Eat", style :TextStyle(fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
          ],
          ),
        ),
        //tab bar
        TabBar(tabs:myTabs),
        //tab bar view
        Expanded(
          child: TabBarView(children: [
         DonutTab(onItemAdded: addItem),
         BurgerTab(onItemAdded: addItem),
         SmoothieTab(onItemAdded: addItem),
         PancakesTab(onItemAdded: addItem),
         PizzaTab(onItemAdded: addItem),
        ])
        ),
       ],),

// inicio nuevo codigo

// Barra inferior
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Mostrar cantidad de artículos y precio total
              Text (
                '$totalItems Items    l    Price: \$${totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18,),
              ),
              // Botón para ver el carrito
              ElevatedButton(
                onPressed: () {
                  // Lógica para ver el carrito
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                child: const Text("View Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//fin nuevo codigo
