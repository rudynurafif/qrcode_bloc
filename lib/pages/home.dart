import 'package:flutter/material.dart';
import 'package:qrcode_bloc/bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:qrcode_bloc/routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthStateLogout) {
            context.goNamed(Routes.login);
          }
        },
        builder: (context, state) {
          if (state is AuthStateLoading) {
            return const CircularProgressIndicator();
          }

          if (state is AuthStateError) {
            return const Center(
              child: Text("TERJADI KESALAHAN"),
            );
          }

          return Center(
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
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<AuthBloc>().add(AuthEventLogout());
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
