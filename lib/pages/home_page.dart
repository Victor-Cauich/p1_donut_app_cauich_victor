import 'package:flutter/material.dart';
import 'package:p1_donut_app_cauich_victor/Utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //donut tab//
    const Mytab(
      iconPath: "lib/icons/donut.png"
      ),
    //burgerTab//
      const Mytab(
      iconPath: "lib/icons/burger.png"
      ),
    //Smoothietab//
      const Mytab(
      iconPath: "lib/icons/smoothie.png"
      ),
    //pancake tab//
      const Mytab(
      iconPath: "lib/icons/pancakes.png"
      ),
    //pizzatab//
    const Mytab(
      iconPath: "lib/icons/pizza.png"
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
        ),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 24.0),
          child: Icon(Icons.person),
        )
      ],
    ),
    body: const Column(
          children: [
            //Texto I want to eat//
            Padding(padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text("I want to",style: TextStyle(fontSize: 24)),
                Text(
                  "eat",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
            ],
          )
        )
        //Tab bar//

        //Tab bar view    
          ],
        
                ),
    );
  }
}
