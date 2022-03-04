import 'package:flutter/material.dart';

class PaymentActivity extends StatelessWidget {
  const PaymentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$1200.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      squareCard(0,30,30,0),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            verticalSpace(40),
                            Icon(
                              Icons.currency_rupee,
                              size: 60,
                              color: Colors.white,
                            ),
                            verticalSpace(20),
                            Text(
                              "REQUEST MONEY",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.cyan,
                              Colors.cyanAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            verticalSpace(40),
                            Icon(
                              Icons.print,
                              size: 60,
                              color: Colors.white,
                            ),
                            verticalSpace(20),
                            Text(
                              "SEND MONEY",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurple,
                              Colors.purpleAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            verticalSpace(40),
                            Icon(
                              Icons.image,
                              size: 60,
                              color: Colors.white,
                            ),
                            verticalSpace(20),
                            Text(
                              "MECHANT MONEY",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(40),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.search,
                            size: 40,
                          ),
                          mini: true,
                        ),
                        Column(
                          children: [
                            verticalSpace(65),
                            Text(
                              "Shell Darwen",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            verticalSpace(7),
                            Text(
                              "Merchant Payment",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            verticalSpace(70),
                            Text(
                              "\$30",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            verticalSpace(2),
                            Text(
                              "06/05/2019",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget verticalSpace(double value) => SizedBox(height: value);

Widget squareCard(
    double topLeft, double topRight, double bottomLeft, double bottomRight,) {
  return (Container(
    height: 170,
    width: 170,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.red,
          Colors.redAccent,
        ],
      ),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(topRight),
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
          topLeft: Radius.circular(topLeft)),
    ),
    child: Column(
      children: [
        verticalSpace(40),
        Icon(
          Icons.search,
          size: 60,
          color: Colors.white,
        ),
        verticalSpace(20),
        Text(
          "LOAD MONEY",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    ),
  ));
}


//popupmenubutton
//randomcolor