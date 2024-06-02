import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EditProfilePage extends StatefulWidget {
  static const route = '/edit-profile';

  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final formKey = GlobalKey<FormBuilderState>();

  Future<void> _onSubmit() async {
    if (!formKey.currentState!.saveAndValidate()) return;
    context.read<AuthBloc>().add(UpdateProfileEvent(
          formKey.currentState!.value['email'],
          formKey.currentState!.value['phone'],
        ));
    navigatorKey.currentState?.pop();
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.personalData,
      hideBackButton: false,
      child: FormBuilder(
        key: formKey,
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EOSectionHeader(title: AppLocalizations.of(context)!.general),
              FormBuilderTextField(
                enabled: false,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.name,
                  border: const OutlineInputBorder(),
                ),
                name: 'name',
                initialValue:
                    "${state.profile?.firstName} ${state.profile?.lastName}",
              ),
              const SizedBox(height: 14),
              FormBuilderTextField(
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.email,
                  border: const OutlineInputBorder(),
                ),
                validator: FormBuilderValidators.email(),
                name: 'email',
                initialValue: state.profile?.email,
              ),
              const SizedBox(height: 14),
              FormBuilderTextField(
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.phone,
                  border: const OutlineInputBorder(),
                ),
                validator: FormBuilderValidators.numeric(),
                name: 'phone',
                initialValue: state.profile?.phone,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _onSubmit,
                child: Text(AppLocalizations.of(context)!.save),
              ),
            ],
          );
        }),
      ),
    );
  }
}
