import 'package:flutter/material.dart';
import 'package:recipe/item8.dart';

import 'menu.dart';

class item7 extends StatelessWidget {
  const item7({super.key});

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
              'Whie Chocolate Cheese Cake',
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
                'assets/white-chocolate-cheesecake.jpg', // Your image path
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => item8()));
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
                  'Ingredients\n'
                  '300g digestive biscuits\n'
                  '150g unsalted butter, melted, plus extra to grease\n'
                  '400g white chocolate, broken into pieces\n'
                  '300g full-fat cream cheese (we used Philadelphia)\n'
                  '250g mascarpone\n'
                  '300ml double cream\n'
                  '200g strawberries or raspberries, to serve\n'
                  'Method\n'
                  'STEP 1\n'
                  'Crush the biscuits in a food processor until completely ground. Add butter and whizz again until you have the desired crumbly consistency.'
                  '\nSTEP 2\n'
                  'Grease and line the base of a 23cm deep, loose-bottomed cake tin. Add the biscuit mixture to the cake tin and pat it flat. Leave to set in the fridge for approximately 30 mins.'
                  '\nSTEP 3\n'
                  'Begin melting the chocolate in a heatproof glass bowl over a small pan of hot water on a low heat. Stir occasionally to prevent sticking. Remove from the heat and leave to cool for 10 mins until barely warm but still liquid.'
                  '\nSTEP 4\n'
                  'Meanwhile whisk the cream cheese and mascarpone together. Add double cream and keep whisking until the mixture is just holding its own shape. Finally, add the melted chocolate and whisk until just combined.'
                  '\nSTEP 5\n'
                  'Spoon the mixture over the cooled and set biscuit base, then smooth the top. Return to the fridge to cool for at least 6 hrs until the topping is set. Finally, decorate with fruit.',
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
