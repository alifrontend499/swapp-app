import 'package:flutter/material.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Homepage Screen',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, initialScreenRoute);
              },
                child: const Text('Go to Initial Screen'),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10)
                ),
            )
          ],
        ),
      ),
    );
  }
}
