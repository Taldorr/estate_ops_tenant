// coverage:ignore-file

part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.credentials,
    this.accountId,
    this.profile,
    this.locale,
    this.onboardingCompleted = false,
  });

  final Credentials? credentials;
  final String? accountId;
  final TenantProfileDto? profile;
  final Locale? locale;
  final bool onboardingCompleted;

  @override
  List<Object?> get props =>
      [credentials, accountId, profile, locale, onboardingCompleted];

  AuthState copyWith({
    Credentials? credentials,
    String? accountId,
    TenantProfileDto? profile,
    Locale? locale,
    bool? onboardingCompleted,
  }) {
    return AuthState(
      credentials: credentials ?? this.credentials,
      accountId: accountId ?? this.accountId,
      profile: profile ?? this.profile,
      locale: locale ?? this.locale,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
    );
  }

  factory AuthState.fromJson(Map<String, dynamic> json) {
    return AuthState(
      accountId: json['accountId'],
      profile: json['profile'] != null
          ? TenantProfileDto.fromJson(json['profile'])
          : null,
      locale: json['locale'] != null
          ? Locale(json['locale']['languageCode'])
          : null,
      onboardingCompleted: json['onboardingCompleted'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'profile': profile?.toJson(),
      'locale': locale != null
          ? {
              'languageCode': locale!.languageCode,
              'countryCode': locale!.countryCode,
            }
          : null,
      'onboardingCompleted': onboardingCompleted,
    };
  }
}

/// The initial state of AuthState
class AuthInitial extends AuthState {
  const AuthInitial() : super();
}
