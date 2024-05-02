import 'dart:typed_data';

import 'package:estate_ops_tenant/main.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import '../bloc/documents_bloc.dart';
import '../models/document.model.dart';
import '../widgets/file_view.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({super.key});

  static const route = '/documents';

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  DocumentModel? displayDocument;

  String _searchValue = '';

  @override
  void initState() {
    context.read<DocumentsBloc>().add(const LoadDocumentsEvent());
    super.initState();
  }

  Future<void> _downloadDocument(DocumentModel doc) async {
    try {
      final m = MimeType.values.firstWhere((e) => e.type == doc.mimeType);
      await FileSaver.instance.saveFile(
        name: doc.name,
        mimeType: m,
        bytes: await context.read<DocumentsBloc>().downloadDocument(doc.id),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.downloadFailed),
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.documentCenter,
      child: displayDocument != null
          ? _buildPreview(displayDocument!)
          : _buildListView(),
    );
  }

  List<DocumentModel> _filterOptions(List<DocumentModel> all, String value) {
    final filtered =
        all.where((elem) => elem.name.toLowerCase().contains(value)).toList();
    filtered.sort((a, b) => a.name.compareTo(b.name));
    return filtered;
  }

  Widget _buildPreview(DocumentModel doc) {
    return FutureBuilder<Uint8List?>(
      future: context.read<DocumentsBloc>().downloadDocument(doc.id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
              child: FileView(mimeType: doc.mimeType, file: snapshot.data!));
        }
        return const CircularProgressIndicator();
      },
    );
  }

  void _requestDocument() {
    navigatorKey.currentState!.pushNamed('/request-document');
  }

  Widget _buildListView() {
    return BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.searchDocuments,
                prefixIcon: const Icon(Icons.search_rounded),
              ),
              onChanged: (value) =>
                  setState(() => _searchValue = value.toLowerCase())),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: _filterOptions(state.documents, _searchValue).length,
              itemBuilder: (context, index) {
                return _buildListItem(
                  _filterOptions(state.documents, _searchValue)[index],
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
          ElevatedButton(
              onPressed: () => _requestDocument(),
              child: Text(AppLocalizations.of(context)!.requestDocument))
        ],
      );
    });
  }

  Widget _buildListItem(DocumentModel doc) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doc.name, style: Theme.of(context).textTheme.titleMedium),
              Text(
                DateFormat('dd.MM.yyy').format(doc.createdAt.toLocal()),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => _downloadDocument(doc),
                icon: const Icon(Icons.arrow_circle_down_outlined),
              ),
              // IconButton(
              //   onPressed: () => _previewDocument(doc),
              //   icon: const Icon(Icons.remove_red_eye_outlined),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
