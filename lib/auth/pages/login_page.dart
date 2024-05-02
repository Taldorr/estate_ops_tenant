import 'package:estate_ops_tenant/main.dart';
import 'package:estate_ops_tenant/onboarding/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _onSubmit(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<AuthBloc>().add(const LoginAuthEvent());
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((_) {
      if (!context.read<AuthBloc>().state.onboardingCompleted) {
        navigatorKey.currentState?.pushNamed(OnboardingPage.route);
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => _onSubmit(context),
            child: Text(AppLocalizations.of(context)!.login)),
      ),
    );
  }
}
