import 'package:estate_ops_tenant/util/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EONameChangeDetails extends StatefulWidget {
  const EONameChangeDetails({super.key});

  @override
  State<EONameChangeDetails> createState() => _EONameChangeDetailsState();
}

class _EONameChangeDetailsState extends State<EONameChangeDetails> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        FormBuilderDateTimePicker(
          name: 'date',
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
          inputType: InputType.date,
          decoration: InputDecoration(
              labelText: '${AppLocalizations.of(context)!.nameChange_date}*'),
          validator: FormBuilderValidators.required(),
        ),
        const EOSpacer(20),
        FormBuilderTextField(
          decoration: InputDecoration(
            labelText: '${AppLocalizations.of(context)!.nameChange_names}*',
            hintText:
                AppLocalizations.of(context)!.nameChange_names_placeholder,
            border: const OutlineInputBorder(),
          ),
          name: 'description',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.maxLength(500),
          ]),
        ),
      ],
    );
  }
}
