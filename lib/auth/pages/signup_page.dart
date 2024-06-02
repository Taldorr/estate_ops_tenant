import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../bloc/bloc.dart';

class SignupPage extends StatefulWidget {
  static const route = '/signup';

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool showPassword = false;

  void _onSubmit(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = formKey.currentState?.saveAndValidate();
    if (isValid == null || !isValid) {
      return;
    }
    context.read<AuthBloc>().add(SignupAuthEvent(
          email: formKey.currentState?.value['email'],
          password: formKey.currentState?.value['password'],
          // activationCode: formKey.currentState?.value['activation_code'],
        ));
  }

  void _login() {
    navigatorKey.currentState?.pushNamed('/login');
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
                        AppLocalizations.of(context)!.register,
                        style: Theme.of(context).textTheme.labelLarge,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 28),
                      Text(
                        AppLocalizations.of(context)!.register_text,
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
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ]),
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
                      FormBuilderTextField(
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          (val) {
                            if (val !=
                                formKey.currentState?.value['password']) {
                              return AppLocalizations.of(context)!
                                  .passwords_not_match;
                            }
                            return null;
                          }
                        ]),
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          labelText:
                              AppLocalizations.of(context)!.repeat_password,
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
                        name: 'password_repeat',
                      ),
                      const SizedBox(height: 10),
                      // FormBuilderTextField(
                      //   validator: FormBuilderValidators.required(),
                      //   decoration: InputDecoration(
                      //     labelText:
                      //         AppLocalizations.of(context)!.activation_code,
                      //     border: const OutlineInputBorder(),
                      //   ),
                      //   name: 'activation_code',
                      // ),
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
                        child: Text(AppLocalizations.of(context)!.register),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        children: [
                          Text(AppLocalizations.of(context)!.already_account),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: _login,
                            child: Text(
                              AppLocalizations.of(context)!.login_here,
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
