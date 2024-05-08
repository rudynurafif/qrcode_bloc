import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/settings');
              },
              child: const Text("Go to Settings Page"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/products');
              },
              child: const Text("Go to Products Page"),
            ),
          ],
        ),
      ),
    );
  }
}
