import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  Widget space(double value) => SizedBox(height: value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(20),
              gradient: const RadialGradient(
                center: Alignment.center,
                colors: [
                  Colors.white,
                  Colors.pinkAccent,
                  Colors.blueAccent,
                ],
              )),
          child: Column(
            children: [
              space(50),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white,
                        Colors.red,
                        Colors.green,
                      ],
                    )),
                width: 50,
                height: 50,
              ),
              space(10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20)),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.lightGreen,
                        Colors.blueAccent,
                        Colors.purple,
                      ],
                    )),
                width: 50,
                height: 50,
              ),
              space(10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Colors.lightBlue,
                        Colors.deepOrangeAccent,
                        Colors.yellowAccent,
                      ],
                    )),
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
