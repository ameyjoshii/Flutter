
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_projects/restaurant_menu.dart';
import 'package:image_picker/image_picker.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  File? file;

  getImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    file = File(image!.path);
    setState(() {});
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
                  backgroundImage: file == null
                      ? NetworkImage(
                      'https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_.jpg')
                      : FileImage(file!) as ImageProvider,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  getImage();
                },
                elevation: 20,
                child: Text("Select Image"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: chromeyellow, width: 4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
