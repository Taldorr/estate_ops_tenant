import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../auth/bloc/bloc.dart';

class ConnectAccountDialog extends StatefulWidget {
  static const route = '/connect-account';

  const ConnectAccountDialog({super.key});

  @override
  State<ConnectAccountDialog> createState() => _ConnectAccountDialogState();
}

class _ConnectAccountDialogState extends State<ConnectAccountDialog> {
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

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.credentialsWrong) {
            formKey.currentState?.fields['email']
                ?.invalidate(AppLocalizations.of(context)!.invalid_credentials);
            formKey.currentState?.fields['password']
                ?.invalidate(AppLocalizations.of(context)!.invalid_credentials);
          }
        },
        builder: (context, state) {
          return EOCard(
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
                    labelText: AppLocalizations.of(context)!.activation_code,
                    border: const OutlineInputBorder(),
                  ),
                  name: 'activation_code',
                ),
                if (!state.somethingWrong) const SizedBox(height: 28),
                if (state.somethingWrong) ...[
                  const SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context)!.login_something_wrong,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                  const SizedBox(height: 10),
                ],
                ElevatedButton(
                  onPressed: () => _onSubmit(context),
                  child: Text(AppLocalizations.of(context)!.get_access),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
