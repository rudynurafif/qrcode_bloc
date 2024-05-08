import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  final String? id;

  const DetailProductPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail Page"),
      ),
      body: Center(
        child: Text("Detail Product $id"),
      ),
    );
  }
}
