// coverage:ignore-file

part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class InitAuthEvent extends AuthEvent {
  const InitAuthEvent();

  @override
  List<Object> get props => [];
}

class LoginAuthEvent extends AuthEvent {
  const LoginAuthEvent();

  @override
  List<Object> get props => [];
}

class LogoutAuthEvent extends AuthEvent {
  const LogoutAuthEvent();

  @override
  List<Object> get props => [];
}

class GetProfileEvent extends AuthEvent {
  const GetProfileEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguageEvent extends AuthEvent {
  final Locale locale;
  const ChangeLanguageEvent(this.locale);

  @override
  List<Object> get props => [locale];
}
