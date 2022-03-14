import 'package:firebase_database/firebase_database.dart';

class MyDatabase {
  static List<Map> data = [];
  static DatabaseReference db = FirebaseDatabase.instance.ref('Users');
  static String dataKey = '';
  static Future insertData(String email , String pass, String fname, String lname, String contact, String dob, String gender) async{
    dataKey = db.push().key!;

    db.child(dataKey).set({
      'email': email,
      'pass': pass,
      'fname': fname,
      'lname': lname,
      'contact': contact,
      'dob': dob,
      'gender': gender,
      'key': dataKey,
    });
  }

  static updateData(String imgURL, String dataKey){
    db.child(dataKey).update({
      'imgURL': imgURL,
      'key': dataKey,
    });
  }

  // static deleteData(String key){
  //   db.child(key).remove();
  // }

  static Future selectData() async{
    Map temp = {};
    db.once().then((value){
      temp = value.snapshot.value as Map;
      data.clear();
      temp.forEach((key, value) {
        data.add(value);
      });
      return data;
    });


  }


}