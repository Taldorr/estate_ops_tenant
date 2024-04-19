// coverage:ignore-file

part of 'notifications_bloc.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();
}

class UpdateFCMTokenEvent extends NotificationsEvent {
  final String token;
  const UpdateFCMTokenEvent({required this.token});

  @override
  List<Object> get props => [token];
}

class InitNotificationsEvent extends NotificationsEvent {
  const InitNotificationsEvent();

  @override
  List<Object> get props => [];
}
