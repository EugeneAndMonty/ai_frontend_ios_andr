import 'package:ai_frontend/frame/body_background.dart';
import 'package:ai_frontend/frame/footer.dart';
import 'package:ai_frontend/frame/header.dart';
import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:ai_frontend/initial_data.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var array = test_map.map(
      (item) {
        return item['size'][0]['array'];
      },
    );

    print(array.toSet());

    print(array.runtimeType);

    return Scaffold(
      appBar: Header(),
      body: Body(
          child: Column(
            children: [
              ...array.map((item) {
                print(item);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...item.map((i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(i),
                      );
                    })
                  ],
                );
              })
            ],
          ),
          gradientRange: mainScreenGradientRange,
          gradientColors: mainScreenGradientColors),
      bottomNavigationBar: Footer(),
    );
  }
}
