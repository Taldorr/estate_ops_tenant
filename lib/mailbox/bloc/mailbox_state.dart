// coverage:ignore-file

part of 'mailbox_bloc.dart';

class MailboxState extends Equatable {
  const MailboxState({this.messages = const []});

  final List<MailboxMessage> messages;

  @override
  List<Object?> get props => [messages];

  MailboxState copyWith({List<MailboxMessage>? messages}) {
    return MailboxState(
      messages: messages ?? this.messages,
    );
  }

  factory MailboxState.fromJson(Map<String, dynamic> json) {
    return const MailboxState(
      messages: [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'messages': [],
    };
  }

  List<MailboxMessage> get unreadMessages =>
      messages.where((m) => m.readAt == null).toList();
}

/// The initial state of MailboxState
class MailboxInitial extends MailboxState {
  const MailboxInitial() : super();
}
