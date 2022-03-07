import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantMenu extends StatelessWidget {
  RestaurantMenu({Key? key}) : super(key: key);

  Color chromeyellow = Colors.yellow.shade700;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded),
            color: chromeyellow,
          ),
          title: Text(
            "My Eatery",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                color: chromeyellow,
                icon: Icon(Icons.help),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.settings),
                color: chromeyellow,
                onPressed: () {},
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(category: "Salads", imgsrc: "salad.png"),
                  menuItem(category: "FastFood", imgsrc: "fastfood.png")
                ],
              ),
              vspace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(category: "Veg Meals", imgsrc: "dish.png"),
                  menuItem(category: "Non-Veg Meals", imgsrc: "nonveg.png"),
                ],
              ),
              vspace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(category: "Hot Drinks", imgsrc: "coffee.png"),
                  menuItem(category: "Cold Drinks", imgsrc: "drinks.png"),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Card(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomIcons(imgsrc: "home.png"),
              bottomIcons(imgsrc: "search.png"),
              bottomIcons(imgsrc: "user.png"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget hspace(double value) => SizedBox(width: value);

Widget vspace(double value) => SizedBox(height: value);

Widget menuItem({String category = '', String imgsrc = ''}) {
  return (MaterialButton(
    onPressed: () {},
    child: (Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image(
              image: AssetImage("asset/" + imgsrc),
              fit: BoxFit.contain,
              width: 75,
              height: 75,
            ),
          ),
          Text(
            category,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          vspace(10),
        ],
      ),
    )),
  ));
}

Widget bottomIcons({String imgsrc = ''}) {
  return (Padding(
    padding: const EdgeInsets.all(10),
    child: MaterialButton(
      onPressed: () {},
      child: Image(
        image: AssetImage("asset/" + imgsrc),
        fit: BoxFit.contain,
        width: 50,
        height: 50,
      ),
    ),
  ));
}
