// coverage:ignore-file

part of 'documents_bloc.dart';

class DocumentsState extends Equatable {
  const DocumentsState({this.documents = const []});

  final List<DocumentModel> documents;

  @override
  List<Object?> get props => [documents];

  DocumentsState copyWith({List<DocumentModel>? documents}) {
    return DocumentsState(
      documents: documents ?? this.documents,
    );
  }
}

/// The initial state of DocumentsState
class DocumentsInitial extends DocumentsState {
  const DocumentsInitial() : super();
}
