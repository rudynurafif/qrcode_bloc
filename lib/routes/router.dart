import 'package:go_router/go_router.dart';
import 'package:qrcode_bloc/pages/detail_product.dart';
import 'package:qrcode_bloc/pages/products.dart';
import '../pages/home.dart';
import '../pages/not_found.dart';
import '../pages/settings.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(path: 'products', builder: (context, state) => const ProductsPage(), routes: [
          GoRoute(
            path: ':productId',
            builder: (context, state) => DetailProductPage(
              id: state.pathParameters['productId'],
            ),
          ),
        ]),
      ],
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingPage(),
    ),
  ],
);
