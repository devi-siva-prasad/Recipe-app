import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe/menu.dart';
import 'package:recipe/starter.dart';

class item4 extends StatelessWidget {
  const item4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(data:"user"),
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
              'Vada Pav',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  150.0), // Adjust corner radius as desired
              child: Image.network(
                'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/10/vada-pav-recipe.jpg', // Your image path
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Starter()),
                    );
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
                        isScrollControlled: true,
                        useSafeArea: true,
                        showDragHandle: true,
                        context: context,
                        builder: (context) => RecipeDetailsPage());
                  },
                  child: Text('Get Recipe'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // next page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => item4()),
                    );
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
                  'Vada Pav Recipe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '**For the Vada:**\n'
                  '1. 1 cup urad dal (whole black gram dal), rinsed and soaked for 4-6 hours\n'
                  '2. 1 green chili, chopped (optional)\n'
                  '3. 1 inch ginger, chopped\n'
                  '4. Curry leaves, a few\n'
                  '5. Salt to taste\n'
                  '6. Oil for frying\n'
                  '\n'
                  '**For the Potato Filling (Batata Bhaji):**\n'
                  '7. 2 medium potatoes, boiled, peeled, and mashed\n'
                  '8. 1/2 teaspoon mustard seeds\n'
                  '9. 1/4 teaspoon cumin seeds\n'
                  '10. 1 green chili, chopped\n'
                  '11. 1 onion, finely chopped\n'
                  '12. 1 inch ginger, chopped\n'
                  '13. Curry leaves, a few\n'
                  '14. Turmeric powder, a pinch\n'
                  '15. Red chili powder, to taste\n'
                  '16. Coriander powder, to taste\n'
                  '17. Salt to taste\n'
                  '18. Cilantro, chopped (for garnish)\n'
                  '\n'
                  '**For the Pav (Burger Buns):**\n'
                  '19. You can use store-bought pav buns or make your own using a recipe\n'
                  '\n'
                  '**For the Chutneys (optional):**\n'
                  '20. Green chutney (made with coriander leaves, mint, chilies, and ginger)\n'
                  '21. Tamarind chutney (made with tamarind pulp, dates, jaggery, and spices)',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                SizedBox(height: 16),
                Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '**For the Vada:**\n'
                  '1. Grind the urad dal with green chili (if using), ginger, and curry leaves into a thick batter. Add salt to taste.\n'
                  '2. Heat oil in a pan. Once hot, scoop small portions of the batter and deep fry until golden brown and crispy.\n'
                  '3. Drain the vadas on paper towels.\n'
                  '\n'
                  '**For the Potato Filling (Batata Bhaji):**\n'
                  '4. Heat oil in a pan. Add mustard seeds and cumin seeds. Once they splutter, add green chili and curry leaves.\n'
                  '5. Sauté for a minute, then add chopped onion and ginger. Cook until softened.\n'
                  '6. Add turmeric powder, red chili powder, and coriander powder. Stir well.\n'
                  '7. Add mashed potatoes and salt to taste. Mix well and cook for a few minutes.\n'
                  '8. Garnish with chopped cilantro.\n'
                  '\n'
                  '**Assembly:**\n'
                  '9. Slice the pav buns in half. Spread green chutney and tamarind chutney (if using) on the insides of the buns.\n'
                  '10. Stuff the buns with a vada and potato filling.\n'
                  '11. Serve hot and enjoy!',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
