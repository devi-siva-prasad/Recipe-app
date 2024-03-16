import "package:flutter/material.dart";
import "package:recipe/dashboard_page.dart";

class newclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(
              color: Colors.white,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            /* Action */
            showModalBottomSheet(
                context: context, builder: (context) => HamMenu());
          },
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
