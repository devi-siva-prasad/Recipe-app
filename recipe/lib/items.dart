import 'package:flutter/material.dart';
import 'package:recipe/afganiMutton.dart';
import 'package:recipe/dashboard_page.dart';
import 'package:recipe/item4.dart';
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
              child: Image.network(
                'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/10/vada-pav-recipe.jpg', // Replace with your high-resolution image path
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
                'assets/starter.jpg', // Replace with your high-resolution image path
                width: 60.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ), // Replace with your image path
            title: Text(''),
            onTap: () {
              // Navigate to Item 5 screen
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
            title: Text('Item 6'),
            onTap: () {
              // Navigate to Item 6 screen
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
            title: Text('Item 7'),
            onTap: () {
              // Navigate to Item 7 screen
            },
          ),
        ],
      ),
    );
  }
}
