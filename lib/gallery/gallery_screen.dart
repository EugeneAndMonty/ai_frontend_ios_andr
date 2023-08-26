import 'package:ai_frontend/frame/body_background.dart';
import 'package:ai_frontend/frame/footer.dart';
import 'package:ai_frontend/frame/header.dart';
import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(
          child: Column(
            children: [],
          ),
          gradientRange: mainScreenGradientRange,
          gradientColors: mainScreenGradientColors),
      bottomNavigationBar: Footer(),
    );
  }
}
