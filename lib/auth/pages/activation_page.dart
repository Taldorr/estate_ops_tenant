import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../bloc/auth_bloc.dart';

class ActivationPage extends StatefulWidget {
  const ActivationPage({super.key});

  static const route = '/activate';

  @override
  State<ActivationPage> createState() => _ActivationPageState();
}

class _ActivationPageState extends State<ActivationPage> {
  final formKey = GlobalKey<FormBuilderState>();

  void _onSubmit(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = formKey.currentState?.saveAndValidate();
    if (isValid == null || !isValid) {
      return;
    }
    context.read<AuthBloc>().add(ConnectAuthEvent(
          activationCode: formKey.currentState?.value['activation_code'],
        ));
  }

  void _logOut() {
    context.read<AuthBloc>().add(const LogoutAuthEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return EOPage(
        gradientBackground: true,
        hideNavbar: true,
        child: FormBuilder(
          key: formKey,
          child: Column(
            children: [
              const Spacer(),
              EOCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.get_access,
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 28),
                    Text(
                      AppLocalizations.of(context)!.get_access_text,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 28),
                    FormBuilderTextField(
                      validator: FormBuilderValidators.required(),
                      decoration: InputDecoration(
                        labelText:
                            AppLocalizations.of(context)!.activation_code,
                        border: const OutlineInputBorder(),
                      ),
                      name: 'activation_code',
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
                      child: Text(AppLocalizations.of(context)!.get_access),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: _logOut,
                        child: Text(
                          AppLocalizations.of(context)!.logout,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}
