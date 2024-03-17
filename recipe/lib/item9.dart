import 'package:flutter/material.dart';
import 'menu.dart';

class item9 extends StatelessWidget {
  const item9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(data: "user", useremail: "123@gmail.com"),
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(
              color: Colors.white,
            )),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                )),
        backgroundColor: Color.fromARGB(255, 243, 53, 53),
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0), // Background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Caramel Apple Slices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  150.0), // Adjust corner radius as desired
              child: Image.asset(
                'assets/caramelApple.jpg', // Your image path
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.timer,
                  size: 40,
                  color: Colors.white,
                ), // Icon 1
                Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.white,
                ), // Icon 2
                Image.asset(
                  "assets/icons/chef.png",
                  scale: 1.5,
                  color: Colors.white,
                ) // Icon 3
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //back
                    Navigator.pop(context);
                  },
                  child: Text(
                    '<',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button 1 tap
                    showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (context) => RecipeDetailsPage());
                  },
                  child: Text('Get Recipe'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // next page
                  },
                  child: Text(
                    '>',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*   About Receipe  */
class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0), // Add padding around content
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Recipe Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Ingerdients & Process',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Ingredients'
                  '2 pink lady apples'
                  ' 1 lemon, juiced'
                  '1 cup purchased caramel sauce, or more as needed'
                  '1/2 cup chopped pecans'
                  '1/2 cup pomegranate seeds'
                  'Directions'
                  ' Line a tray with parchment. Cut both apples into thick round slices, about 8 total slices. Place apples in a shallow dish and squeeze lemon juice over both sides.'
                  'Heat caramel sauce in a microwave-safe bowl until softened, about 30 seconds.'
                  'With a paper towel, dry each apple slice, and dip half the apple into caramel sauce. Place dipped apple on the prepared tray. Repeat until all apples have been dipped. Refrigerate until firm, 30 to 40 minutes.'
                  ' Sprinkle pecans and pomegranate seeds onto caramel-dipped side of each apple.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
