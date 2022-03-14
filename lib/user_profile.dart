
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/database.dart';
import 'package:flutter_projects/restaurant_menu.dart';
import 'package:image_picker/image_picker.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  String imgURL = '';
  FirebaseStorage storage = FirebaseStorage.instance;

  uploadImage() async{

    ///Pick Image from Gallery
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    ///Create folder
    Reference reference = storage.ref().child("images/${DateTime.now().toString()}");

    ///Upload Image
    UploadTask uploadTask = reference.putFile(File(image!.path));

    ///Get URL
    await (await uploadTask).ref.getDownloadURL().then((value){
      imgURL = value;
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: chromeyellow,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 75,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(imgURL),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  uploadImage();
                },
                elevation: 20,
                child: Text("Select Image"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: chromeyellow, width: 4),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  MyDatabase.updateData(
                      imgURL, MyDatabase.dataKey,
                  ).then((value){
                    setState(() {});
                  });
                },
                elevation: 20,
                child: Text("Update"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: chromeyellow, width: 4),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  MyDatabase.selectData().then((value){
                    setState(() {});
                  });
                },
                elevation: 20,
                child: Text("Load Data"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: chromeyellow, width: 4),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: MyDatabase.data.length,
                  itemBuilder: (context, index) =>
                    ListTile(
                      title: Text("Username: "+ MyDatabase.data[index]['email']),
                      subtitle: Text("Name: " + MyDatabase.data[index]['fname']+' '+ MyDatabase.data[index]['lname']),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
