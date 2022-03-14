

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantMenu extends StatefulWidget {
  RestaurantMenu({Key? key}) : super(key: key);

  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

Map data = {
  'salad': [
    {
      'name': 'Veggie Delight Salad',
      'price': '₹200',
      'desc':
          'A pile of your favorite veggies, finished with the dressing of your choice. Nutritious. Delicious. All for you.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/378/a9f38c57bdf3a2c28d5924ff8ee3d378.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Mexican Patty Salad',
      'price': '₹245',
      'desc':
          'A tasty patty made with red and black kidney beans, combined with your favourite veggies and dressing to give you a masterpiece.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/378/a9f38c57bdf3a2c28d5924ff8ee3d378.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Corn and Peas Salad',
      'price': '₹278',
      'desc':
          'Green peas, golden com and diced carrots, all held together with a smooth and creamy eggless mayonnaise sauce.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/378/a9f38c57bdf3a2c28d5924ff8ee3d378.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
  'hotdrinks': [
    {
      'name': 'Caffe Latte',
      'price': '₹225',
      'desc':
          'Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk forward warm up.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/02b/a07a37ac89efd444c2ad127ab191002b.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Caffe Americano',
      'price': '₹210',
      'desc':
          'Rich, full-bodied espresso with hot water in true European style.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/613/b18e7805c6bec4d615b89e2650610613.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Caffe Mocha',
      'price': '₹265',
      'desc':
          'We combine our Rich in flavour, full-bodied espresso with bittersweet mocha sauce and steamed milk. The classic coffee drink to satisfy your sweet tooth',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/465/0c53951491d574ce4978b3b425dd2465.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Vanilla Latte',
      'price': '₹210',
      'desc':
          'Our dark, rich espresso balanced with vanilla flavored syrup, steamed milk and a light layer of foam.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/cf0/e5c4d00568a68dc664e2ba7fc1705cf0.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
  'fastfood': [
    {
      'name': 'McAloo Tikki Burger',
      'price': '₹47',
      'desc':
          'The worlds favorite Indian burger! Crunchy potato and peas patty topped with delicious Tom Mayo and crunchy onions.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/88d/f74ddf25dde2abb989c347e5ecbb588d.png?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Fries',
      'price': '₹65',
      'desc':
          'World Famous Fries, crispy golden, fried to perfection and lightly salted. Add to your order and enjoy it as is or with your favourite dips and seasoning.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/d14/da4985ef9b2d0c6919da5b5675eacd14.png?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Veg Pizza McPuff',
      'price': '₹45',
      'desc':
          'Crispy brown crust with a generous helping of rich tomato sauce, mixed with carrots, bell peppers, beans, onions and mozzarella.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/d62/7bfa711fc19416d6b5a7ab2cf0c5ad62.png?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Veg Maharaja Mac',
      'price': '₹210',
      'desc':
          'Perfectly fried corn and cheese patty paired along with jalapeo, onion, slice of cheese & crunchy lettuce dressed with cocktail sauce.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/aa1/a0f3276d3d577bead9f56ed9e5230aa1.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
  'colddrinks': [
    {
      'name': 'Coke',
      'price': '₹80',
      'desc':
          'The perfect companion to your burger, fries and everything nice; now in a new and convenient packaging.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/201/754e35701765127df260ee39b489b201.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Sprite',
      'price': '₹80',
      'desc':
          'A refreshing beverage to complement your order; now in a new and convenient packaging.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/984/be9dbf829dc3ee459eb7218d84202984.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Chocolate Shake',
      'price': '₹143',
      'desc':
          'The classic sinful chocolate shake, a treat for anytime you need one. Now in a new, convenient and delivery friendly packaging.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/e74/ab6fa74bc431cb3288547a3ec45c6e74.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Strawberry Shake',
      'price': '₹143',
      'desc':
          'An all time favourite treat bringing together the perfect blend of creamy vanilla soft serve and strawberry flavor.Now in new, convenient and delivery friendly packaging.',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/f7a/4b722ea4c42c970cd4c6e3ec4a534f7a.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
  'vegmeals': [
    {
      'name': 'Mini Punjabi Thali',
      'price': '₹139',
      'desc':
          'Sweet [1 Piece] + 1 Special Paneer Sabji + 3 Roti + 1 Special Veg Biryani + 1 Achar + 1 Salad + 1 Mukhwas',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/7e2/c4a96dcf22a0c9e230395a1940fd27e2.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Silver Punjabi Thali',
      'price': '₹179',
      'desc':
          'Paneer Sabji + Veg Sabji + 4 Butter Chapati Roti + Dal Fry + Jeera Rice + Sweet + Salad + Pickle + Mukhwas',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/ae2/5c40f9368449c268fc746f4466efeae2.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Golden Punjabi Thali',
      'price': '₹175',
      'desc':
          'Special Paneer Sabji + Veg Sabji + 4 Butter Chapati Roti + Special Biryani + Salad + Sweet + Pickle + Mukhwas',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/5c9/dc2f5e104d624a61c74f20f835fa95c9.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Special Gujarati Thali',
      'price': '₹179',
      'desc':
          '1 Green Sabji + 1 Kathol Sabji + 6 Butter Tawa Chapati + 1 Dal + 1 Rice or 1 Dal Khichdi + 1 Papad + 1 Buttermilk + 1 Salad + 1 Achar + 1 Mukhwas',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/c18/5197be7598a16477bdd61dff9b382c18.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
  'nonvegmeals': [
    {
      'name': 'Silver Egg Thali',
      'price': '₹209',
      'desc':
          'Green Egg Keema + Red Egg Curry + Egg Pulao + 4 Roti/Pav [8 Pav] + Salad',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/d2a/73cb2982b67d2b9297ea835cdfd4cd2a.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Golden Egg Thali',
      'price': '₹209',
      'desc':
          'Green Keema + Cream Egg Red Curry + Egg Biryani + 4 Roti/Pav [8 Pav] + Salad',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/e65/806e791e6bdd9832f9e2ed2db0073e65.jpg?fit=around|130:130&crop=130:130;*,*',
    },
    {
      'name': 'Breakfast Special Combo',
      'price': '₹139',
      'desc':
          'Regular Omelette [2 Eggs] + Egg Cutlet + Boiled Egg [2 Eggs] + 2 Breads + Salad',
      'image':
          'https://b.zmtcdn.com/data/dish_photos/4b1/669a66274e0a5ddb20f02256ec3ab4b1.jpg?fit=around|130:130&crop=130:130;*,*',
    },
  ],
};

GlobalKey<FormState> key = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

Color chromeyellow = Colors.yellow.shade700;

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.amber.shade50,
        drawer: Drawer(
          backgroundColor: chromeyellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              drawerItem(label: "Settings"),
              drawerItem(label: "Help"),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: chromeyellow,
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu_rounded),
            color: Colors.black,
          ),
          title: Text(
            "My Eatery",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(
                    category: "Salads",
                    imgsrc: "salad.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['salad']);
                    },
                  ),
                  menuItem(
                    category: "FastFood",
                    imgsrc: "fastfood.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['fastfood']);
                    },
                  ),
                ],
              ),
              vspace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(
                    category: "Veg Meals",
                    imgsrc: "dish.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['vegmeals']);
                    },
                  ),
                  menuItem(
                    category: "Non-Veg Meals",
                    imgsrc: "nonveg.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['nonvegmeals']);
                    },
                  ),
                ],
              ),
              vspace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuItem(
                    category: "Hot Drinks",
                    imgsrc: "coffee.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['hotdrinks']);
                    },
                  ),
                  menuItem(
                    category: "Cold Drinks",
                    imgsrc: "drinks.png",
                    onClick: () {
                      Navigator.pushNamed(context, 'fourth',
                          arguments: data['colddrinks']);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          color: chromeyellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomIcons(imgsrc: "home.png",
                onClick: () {
                Navigator.pushNamed(context, 'first');
              },
              ),
              bottomIcons(imgsrc: "user.png",
              onClick: (){
                Navigator.pushNamed(context, 'fifth');
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget hspace(double value) => SizedBox(width: value);

Widget vspace(double value) => SizedBox(height: value);

Widget menuItem(
    {String category = '', String imgsrc = '', Function()? onClick}) {
  return (MaterialButton(
    onPressed: onClick,
    child: (Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(width: 7,color: chromeyellow)
      ),
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 15),
            child: Image(
              image: AssetImage("asset/" + imgsrc),
              fit: BoxFit.contain,
              width: 75,
              height: 75,
            ),
          ),
          Text(
            category,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          vspace(15),
        ],
      ),
    )),
  ));
}

Widget bottomIcons({String imgsrc = '', Function()? onClick}) {
  return (Padding(
    padding: const EdgeInsets.all(10),
    child: MaterialButton(
      onPressed: onClick,
      child: Image(
        image: AssetImage("asset/" + imgsrc),
        fit: BoxFit.contain,
        width: 40,
        height: 40,
      ),
    ),
  ));
}

Widget drawerItem({String label = ''}) {
  return (Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      MaterialButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  ));
}
