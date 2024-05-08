import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error 404 Not Found"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Error 404 Not Found"),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
