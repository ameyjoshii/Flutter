import 'package:flutter/material.dart';
import 'package:flutter_projects/restaurant_menu.dart';

class DisplayData extends StatefulWidget {
  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(
                color: Colors.blue,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Text(
                "First Name: ${data['fname']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              Text(
                "Last Name: ${data['lname']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              Text(
                "Email ID: ${data['email']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              Text(
                "Contact Number: ${data['phone']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              Text(
                "Gender: ${data['gender']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              Text(
                "Date Of Birth: ${data['showDate']}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vspace(10),
              MaterialButton(onPressed:(){
                Navigator.pushNamed(context, 'third');
              },
                child: Text("Open Restaurant Menu"),
                color: Colors.green,

              ),
            ],
          ),
        ),
      ),
    );
  }
}

