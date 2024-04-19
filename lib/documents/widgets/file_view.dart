import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

// a widget that displays a preview of a file according to its mime type
class FileView extends StatelessWidget {
  final String mimeType;
  final Uint8List file;
  const FileView({super.key, required this.mimeType, required this.file});

  @override
  Widget build(BuildContext context) {
    switch (mimeType) {
      case "application/pdf":
        return PdfView(
          controller: PdfController(
            document: PdfDocument.openData(file),
          ),
        );
      case "image/png":
      case "image/jpg":
        return Image.memory(file);
      default:
        return const Text("Unknown mimetype");
    }
  }
}
