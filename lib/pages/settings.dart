import 'package:flutter/material.dart';
import 'package:qrcode_bloc/routes/router.dart';

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
            const Text("Setting Page"),
            ElevatedButton(
              onPressed: () {
                // context.go('/');
                context.goNamed(Routes.home);
              },
              child: const Text("Go back to Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
