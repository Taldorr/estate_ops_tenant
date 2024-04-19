// coverage:ignore-file

part of 'inquiry_bloc.dart';

abstract class InquiryEvent extends Equatable {
  const InquiryEvent();
}

class CreateInquiryEvent extends InquiryEvent {
  final CreateInquiryDto dto;
  const CreateInquiryEvent(this.dto);

  @override
  List<Object> get props => [dto];
}

class LoadInquirysEvent extends InquiryEvent {
  const LoadInquirysEvent();

  @override
  List<Object> get props => [];
}

class UnselectCurrentEvent extends InquiryEvent {
  const UnselectCurrentEvent();

  @override
  List<Object> get props => [];
}

class CreateMessagesEvent extends InquiryEvent {
  final List<InquiryMessageModel> messages;
  const CreateMessagesEvent(this.messages);

  @override
  List<Object> get props => [messages];
}
