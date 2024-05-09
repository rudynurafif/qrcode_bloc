import 'package:flutter/material.dart';
import 'package:qrcode_bloc/routes/router.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Product Page"),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                // Dynamic routing -> dgn path
                // context.go('/products/${index + 1}');

                // Dynamic routing -> dgn route named
                context.goNamed(
                  Routes.detailProduct,
                  pathParameters: {"productId": "${index + 1}"},
                  queryParameters: {
                    "id": "${index + 1}",
                    "title": "PRODUCT ${index + 1}",
                    "deskripsi": "Deskripsi Produk ${index + 1}",
                  },
                );
              },
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text("PRODUCT ${index + 1}"),
              subtitle: Text("Deskripsi product ${index + 1}"),
            );
          },
        ));
  }
}
