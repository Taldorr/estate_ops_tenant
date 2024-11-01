import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/dashboard/pages/dashboard_page.dart';
import 'package:estate_ops_tenant/util/widgets/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../models/inquiry.model.dart';
import '../repositories/inquiry_repository.dart';

part 'inquiry_event.dart';
part 'inquiry_state.dart';

class InquiryBloc extends Bloc<InquiryEvent, InquiryState> {
  final InquiryRepository _inquiryRepository;

  InquiryBloc(this._inquiryRepository) : super(const InquiryInitial()) {
    on<CreateMessagesEvent>(_onCreateMessageEvent);
    on<CreateInquiryEvent>(_onCreateInquiryEvent);
    on<LoadInquirysEvent>(_onLoadInquirysEvent);
    on<SelectCurrentEvent>(_onSelectCurrentEvent);
    on<UnselectCurrentEvent>(_onUnselectCurrentEvent);
    on<RequestDocumentEvent>(_onRequestDocumentEvent);
  }

  Future<void> _onCreateMessageEvent(
      CreateMessagesEvent event, Emitter<InquiryState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      await Future.wait(
          event.messages.map((m) => _inquiryRepository.addMessage(m)));

      add(SelectCurrentEvent(state.current!.id));
    } catch (e) {
      print(e);
    }
  }

  Future<void> _onCreateInquiryEvent(
      CreateInquiryEvent event, Emitter<InquiryState> emit) async {
    try {
      InquiryModel? newInquiry =
          await _inquiryRepository.createInquiry(event.dto);
      if (newInquiry != null && event.messageDtos != null) {
        final futures = event.messageDtos!.map((mDto) => _inquiryRepository
            .addMessage(mDto.copyWith(inquiryId: newInquiry!.id)));
        await Future.wait(futures);
        newInquiry = await _inquiryRepository.getOne(newInquiry.id);
      }

      if (newInquiry != null) {
        final inquirys = [...state.inquirys, newInquiry];
        emit(state.copyWith(inquirys: inquirys, current: inquirys.last));
        _goToDoneScreen();
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

  Future<void> _onSelectCurrentEvent(
      SelectCurrentEvent event, Emitter<InquiryState> emit) async {
    final inq = await _inquiryRepository.getOne(event.inquiryId);
    emit(
      state.copyWith(
        current: inq,
      ),
    );
  }

  Future<void> _onUnselectCurrentEvent(
      UnselectCurrentEvent event, Emitter<InquiryState> emit) async {
    emit(state.resetCurrent());
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

  void _goToDoneScreen() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => SuccessPage(
          title: AppLocalizations.of(context)!.concernReported,
          content: AppLocalizations.of(context)!.concernReportedText,
          primaryLabel: AppLocalizations.of(context)!.backToDashboard,
          primaryAction: () {
            navigatorKey.currentState
                ?.popUntil(ModalRoute.withName(DashboardPage.route));
          },
        ),
      ),
    );
  }
}
