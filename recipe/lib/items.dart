import 'package:flutter/material.dart';
import 'package:recipe/afganiMutton.dart';
import 'package:recipe/item4.dart';
import 'package:recipe/item5.dart';
import 'package:recipe/item6.dart';
import 'package:recipe/item7.dart';
import 'package:recipe/item8.dart';
import 'package:recipe/item9.dart';
import 'package:recipe/starter.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/biryani.png', // Replace with your high-resolution image path
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Biryani'),
            onTap: () {
              // Navigate to Item 1 screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AfganiMutton()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/starter.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Chicken Lazania'),
            onTap: () {
              // Navigate to Item 2 screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Starter()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/afgani.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Afgani Mutton'),
            onTap: () {
              // Navigate to Item 3 screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AfganiMutton()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/vadaPav.jpeg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Vada Pav'),
            onTap: () {
              // Navigate to Item 4 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item4()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/Haleem.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Haleem'),
            onTap: () {
              // Navigate to Item 5 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item5()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/chocolateMousse.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Chocolate Mousse'),
            onTap: () {
              // Navigate to Item 6 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item6()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/white-chocolate-cheesecake.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('White Chocolate cheese cake'),
            onTap: () {
              // Navigate to Item 7 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item7()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/scmc.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Strawberry Chocolate Mousse cake'),
            onTap: () {
              // Navigate to Item 7 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item8()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/CaramelApple.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text('Caramel Apple Slices'),
            onTap: () {
              // Navigate to Item 7 screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => item9()));
            },
          ),
        ],
      ),
    );
  }
}
