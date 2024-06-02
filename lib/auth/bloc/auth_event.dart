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
  final String email;
  final String password;
  const LoginAuthEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class SignupAuthEvent extends AuthEvent {
  final String email;
  final String password;
  // final String activationCode;
  const SignupAuthEvent({
    required this.email,
    required this.password,
    // required this.activationCode,
  });

  @override
  List<Object> get props => [email, password];
}

class ConnectAuthEvent extends AuthEvent {
  final String activationCode;
  const ConnectAuthEvent({
    required this.activationCode,
  });

  @override
  List<Object> get props => [activationCode];
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

class OnboardingCompletedEvent extends AuthEvent {
  const OnboardingCompletedEvent();

  @override
  List<Object> get props => [];
}

class UpdateProfileEvent extends AuthEvent {
  final String? email;
  final String? phone;
  const UpdateProfileEvent(this.email, this.phone);

  @override
  List<Object?> get props => [email, phone];
}
