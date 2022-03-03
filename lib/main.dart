import 'package:flutter/material.dart';
import 'package:flutter_projects/rowColumn.dart';

import 'PaymentActivity.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blueGrey,
    ),
    home: PaymentActivity(),
  ));
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  Widget space(double value) => SizedBox(width: value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.blueGrey,
        drawer: const Drawer(
          child: Center(child: Text("Settings")),
          backgroundColor: Colors.blueGrey,
        ),
        appBar: AppBar(
          title: Text("Application"),
          backgroundColor: Colors.blueGrey.shade700,
        ),
        bottomNavigationBar:
            Container(height: 60, color: Colors.blueGrey.shade700),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Button Clicked");
          },
          icon: Icon(Icons.alarm_add_outlined, color: Colors.grey),
          label: Text(
            "Add",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
          elevation: 10,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.lightGreenAccent.shade200,
                border: Border.all(width: 5, color: Colors.deepOrange),
                gradient: const RadialGradient(
                  colors: [
                    Colors.lightGreen,
                    Colors.green,
                    Colors.lightGreenAccent,
                  ],
                  center: Alignment.centerRight,
                )),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello World",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                space(20),
                Icon(Icons.accessibility_new_rounded, size: 50),
                space(20),
                FloatingActionButton(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
