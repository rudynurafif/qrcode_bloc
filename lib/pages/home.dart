import 'package:flutter/material.dart';
import 'package:qrcode_bloc/routes/router.dart';

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
                // GoRouter.of(context).go('/settings');
                context.goNamed(Routes.settings);
              },
              child: const Text("Go to Settings Page"),
            ),
            ElevatedButton(
              onPressed: () {
                // context.go('/products');
                context.goNamed(Routes.products);
              },
              child: const Text("Go to Products Page"),
            ),
          ],
        ),
      ),
    );
  }
}
