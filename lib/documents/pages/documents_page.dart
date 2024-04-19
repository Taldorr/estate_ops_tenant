import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/documents_bloc.dart';
import '../models/document.model.dart';
import '../widgets/file_view.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({super.key});

  static const route = '/documents';

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  DocumentModel? displayDocument;

  @override
  void initState() {
    context.read<DocumentsBloc>().add(const LoadDocumentsEvent());
    super.initState();
  }

  void _downloadDocument(DocumentModel doc) {
    setState(() {
      displayDocument = doc;
    });
  }

  void _previewDocument(DocumentModel doc) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              Center(child: _buildPreview(doc)),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.documentCenter),
      ),
      body: BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (context, state) {
          return displayDocument != null
              ? _buildPreview(displayDocument!)
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 14,
                        childAspectRatio: 165 / 100,
                      ),
                      itemCount: state.documents.length,
                      itemBuilder: (context, index) {
                        return _buildGridItem(state.documents[index]);
                      },
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget _buildPreview(DocumentModel doc) {
    return FutureBuilder<Uint8List?>(
      future: context.read<DocumentsBloc>().downloadDocument(doc.id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(child: FileView(mimeType: doc.mimeType, file: snapshot.data!));
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Widget _buildGridItem(DocumentModel doc) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xF2FDFDFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.70, color: Color(0xFFBAC4F8)),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26354ECE),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doc.name, style: Theme.of(context).textTheme.displayMedium),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('dd.MM.yyy').format(doc.createdAt.toLocal()),
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GestureDetector(
                onTap: () => _downloadDocument(doc),
                child: Icon(
                  Icons.arrow_circle_down_outlined,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              GestureDetector(
                onTap: () => _previewDocument(doc),
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
