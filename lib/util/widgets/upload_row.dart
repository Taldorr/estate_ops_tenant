import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class EOUploadRow extends StatelessWidget {
  const EOUploadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderImagePicker(
      name: 'attachments',
      decoration: const InputDecoration(labelText: 'Bilder hinzufügen'),
      maxImages: 5,
      imageQuality: 50,
    );
  }
}
