import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/onboarding/pages/onboarding_page.dart';
import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormBuilderState>();

  bool showPassword = false;

  void _onSubmit(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = formKey.currentState?.saveAndValidate();
    if (isValid == null || !isValid) {
      return;
    }
    context.read<AuthBloc>().add(
          LoginAuthEvent(
            email: formKey.currentState?.value['email'],
            password: formKey.currentState?.value['password'],
          ),
        );
  }

  void _forgotPassword() {
    navigatorKey.currentState?.pushNamed('/forgot-password');
  }

  void _register() {
    navigatorKey.currentState?.pushNamed('/signup');
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
    return EOPage(
      gradientBackground: true,
      hideNavbar: true,
      child: FormBuilder(
        key: formKey,
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.credentialsWrong) {
              formKey.currentState?.fields['email']?.invalidate(
                  AppLocalizations.of(context)!.invalid_credentials);
              formKey.currentState?.fields['password']?.invalidate(
                  AppLocalizations.of(context)!.invalid_credentials);
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                EOCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.login,
                        style: Theme.of(context).textTheme.labelLarge,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 28),
                      Text(
                        AppLocalizations.of(context)!.welcome_back,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 28),
                      FormBuilderTextField(
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email()
                        ]),
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.email,
                          border: const OutlineInputBorder(),
                        ),
                        name: 'email',
                      ),
                      const SizedBox(height: 10),
                      FormBuilderTextField(
                        validator: FormBuilderValidators.required(),
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.password,
                          border: const OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () =>
                                setState(() => showPassword = !showPassword),
                            child: Icon(
                              showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        name: 'password',
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: _forgotPassword,
                        child: Text(
                          AppLocalizations.of(context)!.forgot_password,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      if (!state.somethingWrong) const SizedBox(height: 28),
                      if (state.somethingWrong) ...[
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.login_something_wrong,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                        const SizedBox(height: 10),
                      ],
                      ElevatedButton(
                        onPressed: () => _onSubmit(context),
                        child: Text(AppLocalizations.of(context)!.login),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(AppLocalizations.of(context)!.no_account),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: _register,
                            child: Text(
                              AppLocalizations.of(context)!.register_here,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
