import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../models/inquiry.model.dart';
import '../models/inquiry_message.model.dart';
import '../repositories/inquiry_repository.dart';

part 'inquiry_event.dart';
part 'inquiry_state.dart';

class InquiryBloc extends Bloc<InquiryEvent, InquiryState> {
  final InquiryRepository _inquiryRepository;

  InquiryBloc(this._inquiryRepository) : super(const InquiryInitial()) {
    on<CreateMessagesEvent>(_onCreateMessageEvent);
    on<CreateInquiryEvent>(_onCreateInquiryEvent);
    on<LoadInquirysEvent>(_onLoadInquirysEvent);
    on<UnselectCurrentEvent>(_onUnselectCurrentEvent);
    on<RequestDocumentEvent>(_onRequestDocumentEvent);
  }

  Future<void> _onCreateMessageEvent(
      CreateMessagesEvent event, Emitter<InquiryState> emit) async {
    final messages = event.messages
        .map(
          (m) => CreateInquiryMessageDto(
            inquiryId: state.current == null ? "INVALID" : state.current!.id,
            content: m.content ?? "",
            authorAccountId: m.authorAccountId,
            isAIGenerated: m.isAIGenerated,
            createdAt: m.isAIGenerated
                ? DateTime.now().toUtc()
                : null, // only set for AI messages so the order is correct
          ),
        )
        .toList();
    if (state.current == null) {
      // A question should be the only time we don't have a current inquiry
      final dto = CreateInquiryDto(
        type: CreateInquiryDtoType.question,
        messages: messages,
      );
      add(CreateInquiryEvent(dto));
    } else {
      try {
        emit(state.copyWith(isLoading: true));

        final newMessages = await Future.wait(
            messages.map((m) => _inquiryRepository.addMessage(m)));

        final msgModels =
            newMessages.map((m) => InquiryMessageModel.fromDto(m!)).toList();
        final inquirys = state.inquirys.map((i) {
          if (i.id == state.current!.id) {
            i.messages = [...i.messages, ...msgModels];
          }
          return i;
        }).toList();

        emit(state.copyWith(
          inquirys: inquirys,
          current: inquirys.firstWhere((i) => i.id == state.current!.id),
          isLoading: false,
        ));
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> _onCreateInquiryEvent(
      CreateInquiryEvent event, Emitter<InquiryState> emit) async {
    try {
      final newInquiry = await _inquiryRepository.createInquiry(event.dto);
      if (newInquiry != null) {
        final inquirys = [...state.inquirys, InquiryModel.fromDto(newInquiry)];
        emit(state.copyWith(inquirys: inquirys, current: inquirys.last));
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _onLoadInquirysEvent(
      LoadInquirysEvent event, Emitter<InquiryState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final inquirys = await _inquiryRepository.loadAll();
      emit(state.copyWith(
        inquirys: inquirys.map((e) => InquiryModel.fromDto(e)).toList(),
        isLoading: false,
      ));
    } catch (e) {
      print(e);
    }
  }

  Future<void> _onUnselectCurrentEvent(
      UnselectCurrentEvent event, Emitter<InquiryState> emit) async {
    emit(state.copyWith(current: null));
  }

  Future<void> _onRequestDocumentEvent(
      RequestDocumentEvent event, Emitter<InquiryState> emit) async {
    await _inquiryRepository.requestDocument(
      DocumentRequestDto(
        documentType: event.documentType,
        notes: event.notes,
      ),
    );
  }
}
