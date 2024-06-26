import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'firebase_options.dart';
import 'routes/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp.router(
        theme: ThemeData(useMaterial3: false),
        routerConfig: router,
      ),
    );
  }
}
