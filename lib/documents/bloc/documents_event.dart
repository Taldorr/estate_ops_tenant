// coverage:ignore-file

part of 'documents_bloc.dart';

abstract class DocumentsEvent extends Equatable {
  const DocumentsEvent();
}

class LoadDocumentsEvent extends DocumentsEvent {
  const LoadDocumentsEvent();

  @override
  List<Object> get props => [];
}
