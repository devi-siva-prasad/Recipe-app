import 'package:flutter/material.dart';
import 'package:recipe/item7.dart';
import 'package:recipe/menu.dart';

class item6 extends StatelessWidget {
  const item6({super.key});

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
              'Chocolate Mousee',
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
                'assets/chocolateMousse.jpg', // Replace with your high-resolution image path
                width: 300.0,
                height: 300.0,
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
                    Navigator.pop(context);
                    //back
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
                        MaterialPageRoute(builder: (context) => item7()));
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
                  '3 1/2 ounces dark chocolate (62% cacao is ideal)'
                  '1 tablespoon unsalted butter'
                  '2 large egg yolks'
                  '1 tablespoon white sugar'
                  ' 1/4 cup water'
                  '1 tiny pinch salt'
                  '1/2 cup chilled heavy whipping cream'
                  'Local Offers'
                  '00000 Change'
                  'Oops! We cannot find any ingredients on sale near you. Do we have the correct zip code?'
                  ' Directions'
                  'Break up or chop chocolate into small pieces and set aside with butter.'
                  'Add egg yolks, sugar, water, and salt to a metal mixing bowl. Cook, whisking, directly over medium-low heat until the mixture is thick, foamy, and hot to the touch (145 to 150 degrees F (63 to 65 degrees C)).'
                  'Chef s Note:'
                  'This mixture can also be cooked in a saucepan, but make sure the whisk is getting into the corners of the pan so egg doesn’t stick.'
                  'Once the yolk mixture is thick and hot, add chocolate and butter, and whisk until all chocolate is melted. Let rest for a few minutes on the counter, whisking occasionally to further cool the mixture to just above or at room temperature. The chocolate mixture shouldn’t go into the whipped cream while still warm, but if cooled too long, the mixture may get too firm to fold in.'
                  ' Whisk cold cream until medium stiff peaks form. If cream is whisked further, it will separate and the final texture will be grainy.'
                  ' Transfer about 1/3 of chocolate mixture into whipped cream, and fold with a spatula until almost incorporated. Gently fold in remaining chocolate, trying to keep as much air in the mixture as possible.'
                  'Transfer into 4 serving dishes, wrap, and chill before serving, at least 1 hour.'
                  'closeup of chocolate mousse garnished with whipped cream, chocolate shavings, and three fresh raspberries served in a stemmed glass'
                  'Chefs Note:'
                  ' You can use 1/4 cup water as specified, or you can use another liquid for part of the water, such as a combination of 2 tablespoons water + 2 tablespoons cold coffee, or 3 tablespoons water + 1 tablespoon rum, if you would like a flavor other than pure chocolate for your mousse.',
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
