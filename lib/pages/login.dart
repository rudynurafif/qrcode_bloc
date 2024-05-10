import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode_bloc/bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:qrcode_bloc/routes/router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailC = TextEditingController(text: "admin@gmail.com");
  final TextEditingController passwordC = TextEditingController(text: "admin123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LOGIN PAGE"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              controller: emailC,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: passwordC,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEventLogin(emailC.text, passwordC.text),
                    );
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AuthStateLogin) {
                    context.goNamed(Routes.home);
                  }
                  if (state is AuthStateError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is AuthStateLoading) {
                    return const Text("Loading");
                  }
                  return const Text("LOGIN");
                },
              ),
            )
          ],
        ));
  }
}
