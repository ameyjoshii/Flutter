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
        appBar: AppBar(
          backgroundColor: chromeyellow,
          leading: BackButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Confirm Details",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              vspace(30),
              Center(
                child: MaterialButton(onPressed:(){
                  Navigator.pushNamed(context, 'third');
                },
                  child: Text("Agree and Continue"),
                  color: Colors.green,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

