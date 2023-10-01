import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/content_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return  Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                   contents[i].image,
                  ),
                  // height: 600,
                ),
                Text(
                  contents[i].title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  contents[i].description,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
