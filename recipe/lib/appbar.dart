import "package:flutter/material.dart";

class appbar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
