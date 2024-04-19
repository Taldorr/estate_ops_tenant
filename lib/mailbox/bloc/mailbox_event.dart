// coverage:ignore-file

part of 'mailbox_bloc.dart';

abstract class MailboxEvent extends Equatable {
  const MailboxEvent();
}

class InitMailboxEvent extends MailboxEvent {
  const InitMailboxEvent();

  @override
  List<Object> get props => [];
}

class LoadMailboxEvent extends MailboxEvent {
  const LoadMailboxEvent();

  @override
  List<Object> get props => [];
}
