
import 'package:flutter/material.dart';
import 'package:flutter_projects/restaurant_menu.dart';

class LoginDetails extends StatefulWidget {
  LoginDetails({Key? key}) : super(key: key);

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}
GlobalKey<FormState> key = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _LoginDetailsState extends State<LoginDetails> {
  bool cb1 = false;
  bool cb2 = false;
  bool cb3 = false;
  bool cb4 = false;
  bool cb5 = false;
  String gender = '';
  String g1 = 'Male';
  String g2 = 'Female';
  String g3 = 'Other';
  bool pass = true;
  String showDate = 'Select Date';
  String errorPass = '';
  String errorFname = '';
  String errorLname = '';
  String errorEmail = '';
  String errorContact = '';
  Color color = Colors.blueAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Login Form",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Fredoka",
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu_rounded),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: ("First Name"),
                            filled: true,
                            fillColor: Colors.black26,
                            prefixIcon: Icon(Icons.account_box),
                            errorText: errorFname,
                          ),
                          onChanged: (val) {
                            setState(() {
                              errorFname =
                                  val.isEmpty ? 'Enter First Name' : '';
                            });
                          },
                          controller: fnameController,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: ("Last Name"),
                            filled: true,
                            fillColor: Colors.black26,
                            prefixIcon: Icon(Icons.account_box),
                            errorText: errorLname,
                          ),
                          onChanged: (val) {
                            setState(() {
                              errorLname = val.isEmpty ? 'Enter Last Name' : '';
                            });
                          },
                          controller: lnameController,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: ("Email Address"),
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(Icons.email),
                      errorText: errorEmail,
                    ),
                    onChanged: (val) {
                      setState(() {
                        errorEmail =
                            val.isEmpty ? 'Enter Valid Email Address' : '';
                      });
                    },
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      hintText: ("Contact Number"),
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(Icons.phone),
                      errorText: errorContact,
                    ),
                    onChanged: (val) {
                      setState(() {
                        errorContact = (val.length != 10 || val.isEmpty)
                            ? 'Enter Valid Contact Number'
                            : '';
                      });
                    },
                    controller: contactController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: ("Password"),
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(Icons.password_rounded),
                      suffixIcon: IconButton(
                        icon: Icon(
                            pass ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                      errorText: errorPass,
                    ),
                    obscureText: pass,
                    onChanged: (val) {
                      setState(() {
                        errorPass = val.isEmpty ? 'Enter Valid Password' : '';
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Gender:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Radio(
                            value: g1,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                           hspace(10),
                          Radio(
                            value: g2,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Radio(
                            value: g3,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          Text(
                            "Other",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Hobbies:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: cb1,
                                onChanged: (val) {
                                  setState(() {
                                    cb1 = val!;
                                  });
                                },
                              ),
                              Text(
                                "Gaming",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: cb2,
                                onChanged: (val) {
                                  setState(() {
                                    cb2 = val!;
                                  });
                                },
                              ),
                              Text(
                                "Dance",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: cb3,
                                onChanged: (val) {
                                  setState(() {
                                    cb3 = val!;
                                  });
                                },
                              ),
                              Text(
                                "Sports",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: cb4,
                                onChanged: (val) {
                                  setState(() {
                                    cb4 = val!;
                                  });
                                },
                              ),
                              Text(
                                "Writing",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: cb5,
                                onChanged: (val) {
                                  setState(() {
                                    cb5 = val!;
                                  });
                                },
                              ),
                              Text(
                                "Others",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Date Of Birth:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(showDate.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: MaterialButton(
                          color: Colors.blueAccent,
                          elevation: 10.0,
                          height: 30,
                          child: Text('DatePicker'),
                          onPressed: () async {
                            DateTime? date = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2004),
                              initialDate: DateTime(2004),
                            );

                            showDate = date!.day.toString() +
                                '/' +
                                date.month.toString() +
                                '/' +
                                date.year.toString();
                            setState(() {});
                          },
                        ),
                      ),

                    ],
                  ),
                ),
                /*MaterialButton(
                  color: Colors.green,
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('Time of Registration'),
                  onPressed: () async {
                    TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );

                    String amPm = time!.periodOffset == 0 ? 'AM' : 'PM';
                    int hour = amPm == 'PM' ? time.hour - 12 : time.hour;

                    String selectedTime = hour.toString() +
                        ' : ' +
                        time.minute.toString() +
                        ' ' +
                        amPm;

                    print(selectedTime.toString());
                  },
                ),*/  //Timepicker
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    color: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'second',
                        arguments: {
                          'email': emailController.text,
                          'fname': fnameController.text,
                          'lname': lnameController.text,
                          'phone': contactController.text,
                          'gender': gender,
                          'showDate': showDate,
                        },
                      );
                    },
                    child: Text("SUBMIT"),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

//drawer
//datatable
