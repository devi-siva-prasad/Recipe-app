import 'package:flutter/material.dart';
import 'package:recipe/item4.dart';
import 'package:recipe/item6.dart';
import 'package:recipe/menu.dart';
import 'appbar.dart';

class item5 extends StatelessWidget {
  const item5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(data: "user", useremail: "123@gmail.com"),
      appBar: appbar(),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0), // Background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Haleem',
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
                "assets/Haleem.jpg", // Your image path
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
                      MaterialPageRoute(builder: (context) => item4()),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => item6()),
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
  const RecipeDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Haleem Recipe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '**For Haleem:**\n'
                  '1. 1 cup broken wheat\n'
                  '2. 1/2 cup barley\n'
                  '3. 1/4 cup lentils (masoor dal)\n'
                  '4. 1/4 cup split chickpeas (chana dal)\n'
                  '5. 1/4 cup split black gram (urad dal)\n'
                  '6. 1/4 cup split pigeon peas (toor dal)\n'
                  '7. 1/4 cup split green gram (moong dal)\n'
                  '8. 1/4 cup split red lentils (masoor dal)\n'
                  '9. 1/4 cup split green lentils (moong dal)\n'
                  '10. 1/2 kg boneless mutton or beef, chopped\n'
                  '11. 2 onions, finely sliced\n'
                  '12. 2 tomatoes, chopped\n'
                  '13. 2 tablespoons ginger-garlic paste\n'
                  '14. 1 tablespoon red chili powder\n'
                  '15. 1 teaspoon turmeric powder\n'
                  '16. 1 teaspoon garam masala powder\n'
                  '17. Salt to taste\n'
                  '18. Cooking oil or ghee\n'
                  '19. Fresh coriander leaves and sliced ginger for garnish\n'
                  '\n'
                  '**For Garnish:**\n'
                  '20. Fried onions\n'
                  '21. Lemon wedges\n'
                  '22. Mint leaves\n'
                  '\n'
                  '**For Serving:**\n'
                  '23. Lemon wedges\n'
                  '24. Fried onions\n'
                  '25. Mint leaves\n'
                  '26. Ginger juliennes\n'
                  '27. Garam masala powder\n'
                  '28. Fried bread pieces (optional)\n',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '**Preparation:**\n'
                  '1. Wash and soak all the dals and grains in water for at least 30 minutes.\n'
                  '2. In a pressure cooker, add the soaked dals, grains, and chopped meat.\n'
                  '3. Add ginger-garlic paste, red chili powder, turmeric powder, garam masala powder, and salt.\n'
                  '4. Pour enough water to cover the ingredients and cook until the meat is tender and the dals and grains are well cooked.\n'
                  '\n'
                  '**Making Haleem:**\n'
                  '5. Once cooked, use a hand blender to blend the mixture to a smooth consistency.\n'
                  '6. In a separate pan, heat some oil or ghee and fry the sliced onions until golden brown.\n'
                  '7. Add the chopped tomatoes and cook until soft.\n'
                  '8. Add this onion-tomato mixture to the blended haleem.\n'
                  '9. Mix well and cook on low heat for another 10-15 minutes until the flavors meld together.\n'
                  '10. Adjust the consistency by adding water if necessary.\n'
                  '\n'
                  '**Serving:**\n'
                  '11. Serve hot garnished with fried onions, fresh coriander leaves, sliced ginger, mint leaves, and a squeeze of lemon juice.\n'
                  '12. Serve with naan or pita bread and enjoy!',
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
