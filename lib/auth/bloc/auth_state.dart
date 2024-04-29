// coverage:ignore-file

part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.credentials,
    this.accountId,
    this.profile,
    this.locale,
  });

  final Credentials? credentials;
  final String? accountId;
  final TenantProfileDto? profile;
  final Locale? locale;

  @override
  List<Object?> get props => [credentials, accountId, profile, locale];

  AuthState copyWith({
    Credentials? credentials,
    String? accountId,
    TenantProfileDto? profile,
    Locale? locale,
  }) {
    return AuthState(
      credentials: credentials ?? this.credentials,
      accountId: accountId ?? this.accountId,
      profile: profile ?? this.profile,
      locale: locale ?? this.locale,
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
    };
  }
}

/// The initial state of AuthState
class AuthInitial extends AuthState {
  const AuthInitial() : super();
}
