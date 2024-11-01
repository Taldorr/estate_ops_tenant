import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class EOUploadRow extends StatelessWidget {
  const EOUploadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Permission.photos.request(),
        builder: (context, snap) {
          return FormBuilderImagePicker(
            name: 'attachments',
            decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.addImages),
            maxImages: 5,
            imageQuality: 50,
          );
        });
  }
}
