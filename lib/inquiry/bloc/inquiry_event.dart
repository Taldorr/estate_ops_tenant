// coverage:ignore-file

part of 'inquiry_bloc.dart';

abstract class InquiryEvent extends Equatable {
  const InquiryEvent();
}

class CreateInquiryEvent extends InquiryEvent {
  final CreateInquiryDto dto;
  final List<CreateInquiryMessageDto>? messageDtos;
  const CreateInquiryEvent(this.dto, {this.messageDtos});

  @override
  List<Object?> get props => [dto, messageDtos];
}

class LoadInquirysEvent extends InquiryEvent {
  const LoadInquirysEvent();

  @override
  List<Object> get props => [];
}

class SelectCurrentEvent extends InquiryEvent {
  final String inquiryId;
  const SelectCurrentEvent(this.inquiryId);

  @override
  List<Object> get props => [inquiryId];
}

class UnselectCurrentEvent extends InquiryEvent {
  const UnselectCurrentEvent();

  @override
  List<Object> get props => [];
}

class CreateMessagesEvent extends InquiryEvent {
  final List<CreateInquiryMessageDto> messages;
  const CreateMessagesEvent(this.messages);

  @override
  List<Object> get props => [messages];
}

class RequestDocumentEvent extends InquiryEvent {
  final DocumentType documentType;
  final String? notes;
  const RequestDocumentEvent(this.documentType, this.notes);

  @override
  List<Object?> get props => [documentType, notes];
}
