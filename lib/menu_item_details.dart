import 'package:flutter/material.dart';
import 'package:flutter_projects/display_data.dart';
import 'package:flutter_projects/restaurant_menu.dart';

class MenuItemInfo extends StatefulWidget {
  const MenuItemInfo({Key? key}) : super(key: key);

  @override
  State<MenuItemInfo> createState() => _MenuItemInfoState();
}

class _MenuItemInfoState extends State<MenuItemInfo> {
  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)?.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: chromeyellow,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              tileColor: chromeyellow,
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 30,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('${data[index]['image']}'),
                  radius: 26.5,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "${data[index]['name']}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "${data[index]['desc']}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                  maxLines: 2,
                  textWidthBasis: TextWidthBasis.parent,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "${data[index]['price']}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
