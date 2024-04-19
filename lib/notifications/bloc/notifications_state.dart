// coverage:ignore-file

part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  const NotificationsState();

  @override
  List<Object?> get props => [];

  NotificationsState copyWith() {
    return const NotificationsState();
  }
}

/// The initial state of NotificationsState
class NotificationsInitial extends NotificationsState {
  const NotificationsInitial() : super();
}
