// coverage:ignore-file

part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.credentials,
    this.accountId,
    this.profile,
    this.locale,
    this.loading = false,
    this.onboardingCompleted = false,
    this.credentialsWrong = false,
    this.somethingWrong = false,
  });

  final Credentials? credentials;
  final String? accountId;
  final TenantProfileDto? profile;
  final Locale? locale;
  final bool loading;
  final bool onboardingCompleted;
  final bool credentialsWrong;
  final bool somethingWrong;

  @override
  List<Object?> get props => [
        credentials,
        accountId,
        profile,
        locale,
        onboardingCompleted,
        credentialsWrong,
        somethingWrong,
        loading,
      ];

  AuthState copyWith({
    Credentials? credentials,
    String? accountId,
    TenantProfileDto? profile,
    Locale? locale,
    bool? loading,
    bool? onboardingCompleted,
    bool? credentialsWrong,
    bool? somethingWrong,
  }) {
    return AuthState(
      credentials: credentials ?? this.credentials,
      accountId: accountId ?? this.accountId,
      profile: profile ?? this.profile,
      locale: locale ?? this.locale,
      loading: loading ?? this.loading,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      credentialsWrong: credentialsWrong ?? this.credentialsWrong,
      somethingWrong: somethingWrong ?? this.somethingWrong,
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
