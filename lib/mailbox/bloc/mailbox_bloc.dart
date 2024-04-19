import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../models/mailbox_message.dart';
import '../repositories/mailbox_repository.dart';

part 'mailbox_event.dart';
part 'mailbox_state.dart';

class MailboxBloc extends HydratedBloc<MailboxEvent, MailboxState> {
  final MailboxRepository _mailboxRepository;

  MailboxBloc(this._mailboxRepository) : super(const MailboxInitial()) {
    on<InitMailboxEvent>(_onInitMailboxEvent);
    on<LoadMailboxEvent>(_onLoadMailboxEvent);
  }

  Future<void> _onInitMailboxEvent(InitMailboxEvent event, Emitter<MailboxState> emit) async {}

  Future<void> _onLoadMailboxEvent(LoadMailboxEvent event, Emitter<MailboxState> emit) async {
    try {
      final messages = await _mailboxRepository.load();
      messages.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      emit(state.copyWith(messages: messages));
    } catch (e) {
      print(e);
    }
  }

  @override
  MailboxState? fromJson(Map<String, dynamic> json) {
    return MailboxState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(MailboxState state) {
    return state.toJson();
  }
}
