import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const route = '/login';

  void _onSubmit(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<AuthBloc>().add(const LoginAuthEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () => _onSubmit(context), child: const Text("Login")),
      ),
    );
  }
}