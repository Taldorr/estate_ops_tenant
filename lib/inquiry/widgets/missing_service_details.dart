import 'package:estate_ops_tenant/util/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../util/widgets/upload_row.dart';

class EOMissingServiceDetails extends StatefulWidget {
  const EOMissingServiceDetails({super.key});

  @override
  State<EOMissingServiceDetails> createState() =>
      _EOMissingServiceDetailsState();
}

class _EOMissingServiceDetailsState extends State<EOMissingServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        FormBuilderDateTimePicker(
          name: 'date',
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          inputType: InputType.date,
          decoration: InputDecoration(
              labelText:
                  '${AppLocalizations.of(context)!.missingService_date}*'),
          validator: FormBuilderValidators.required(),
        ),
        const EOSpacer(20),
        FormBuilderTextField(
          decoration: InputDecoration(
            labelText:
                '${AppLocalizations.of(context)!.missingService_description}*',
            hintText: AppLocalizations.of(context)!
                .missingService_description_placeholder,
            border: const OutlineInputBorder(),
          ),
          name: 'description',
          minLines: 2,
          maxLines: 5,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.maxLength(500),
          ]),
        ),
        const EOSpacer(20),
        const EOUploadRow(),
      ],
    );
  }
}
