import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Setting Page"),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text("Go back to Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
