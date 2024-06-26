import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import '../pages/detail_product.dart';
import '../pages/login.dart';
import '../pages/products.dart';
import '../pages/home.dart';
import '../pages/not_found.dart';
import '../pages/settings.dart';

export 'package:go_router/go_router.dart';

part 'route_name.dart';

// GoRouter configuration
final router = GoRouter(
  redirect: (context, state) {
    FirebaseAuth auth = FirebaseAuth.instance;

    print(auth.currentUser);

    if (auth.currentUser == null) {
      return "/login";
    } else {
      return null;
    }
  },
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'products',
          name: Routes.products,
          builder: (context, state) => const ProductsPage(),
          routes: [
            GoRoute(
              path: ':productId',
              name: Routes.detailProduct,
              builder: (context, state) => DetailProductPage(
                id: state.pathParameters['productId'],
                data: state.uri.queryParameters,
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      name: Routes.settings,
      builder: (context, state) => const SettingPage(),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => LoginPage(),
    ),
  ],
);
