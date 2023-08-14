import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {


  const Header({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Color.fromARGB(255, 49, 55, 58),
              leading: Container(
                child: Image(image: AssetImage('images/logo.png')),
                padding: EdgeInsets.only(left: 20),
              ),
              leadingWidth: 140,
            );
  }
}