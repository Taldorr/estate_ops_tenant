import 'dart:async';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/document.model.dart';
import '../repositories/documents_repository.dart';

part 'documents_event.dart';
part 'documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final DocumentsRepository _documentsRepository;

  DocumentsBloc(this._documentsRepository) : super(const DocumentsInitial()) {
    on<LoadDocumentsEvent>(_onLoadDocumentsEvent);
  }

  Future<void> _onLoadDocumentsEvent(LoadDocumentsEvent event, Emitter<DocumentsState> emit) async {
    try {
      final docs = await _documentsRepository.loadDocuments();
      emit(state.copyWith(documents: docs));
    } catch (e) {
      print(e);
    }
  }

  Future<Uint8List?> downloadDocument(String id) => _documentsRepository.downloadDocument(id);
}
