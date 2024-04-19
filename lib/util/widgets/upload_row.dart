import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EOUploadRow extends StatelessWidget {
  const EOUploadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderImagePicker(
      name: 'attachments',
      decoration:  InputDecoration(labelText: AppLocalizations.of(context)!.addImages),
      maxImages: 5,
      imageQuality: 50,
    );
  }
}
