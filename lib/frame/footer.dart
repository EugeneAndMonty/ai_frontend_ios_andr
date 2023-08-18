import 'package:flutter/material.dart';
import 'package:ai_frontend/initial_data.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 70,
      color: Color.fromARGB(255, 49, 55, 58),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...routes.map(
            (route) {
              return GestureDetector(
                onTap: () {context.go(route['route']);},
                child: route['icon'],
              );
            },
          )
        ],
      ),
    );
  }
}
