import 'package:flutter/material.dart';
import 'package:recipe/item9.dart';

import 'menu.dart';

class item8 extends StatelessWidget {
  const item8({super.key});

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
              'Strawberry Chocolate Mousse Cake',
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
                'assets/scmc.jpg', // Your image path
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
                        MaterialPageRoute(builder: (context) => item9()));
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
                  '1 cup chocolate cookie crumbs\n'
                  '3 tablespoons butter, melted\n'
                  '2 pints halved fresh strawberries, divided\n'
                  '2 cups semisweet chocolate chips'
                  '½ cup water\n'
                  '2 tablespoons light corn syrup\n'
                  '2 ½ cups heavy cream, divided\n'
                  '1 tablespoon white sugar\n'
                  'Directions\n'
                  'In a bowl, mix crumbs and melted butter to blend thoroughly. Press evenly onto the bottom of a 9-inch springform pan. Arrange some strawberry halves around the pan side-by-side, pointed tips up, with cut sides against the ring of the pan; set aside.\n'
                  'Place chocolate chips in a blender. Pour water and corn syrup into a small saucepan. Bring to a boil and simmer for 1 minute. Immediately pour over chocolate chips and blend until smooth. Pour into a mixing bowl and cool to room temperature.\n'
                  'While chocolate cools, whip 1 1/2 cups cream to form stiff peaks. Use a rubber spatula or large whisk to fold 1/3 of the whipped cream into the cooled chocolate to lighten it. Gently fold in remaining whipped cream until mousse is thoroughly blended.\n'
                  'Transfer mousse into the prepared pan and smooth the top. The tips of the strawberries might extend above chocolate mixture. Cover with plastic wrap and refrigerate for 4 to 24 hours.\n'
                  'Up to 2 hours before serving, in a medium mixing bowl, beat remaining 1/2 cup cream to form soft peaks. Add sugar. Beat to form stiff peaks.\n'
                  'Remove the ring of the springform pan and place cake on a serving plate. Pipe or dollop whipped cream onto the top of cake. Arrange remaining halved strawberries on whipped cream. To serve, cut into wedges with a thin knife, wiping the blade between cuts.\n',
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
