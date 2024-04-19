// coverage:ignore-file

part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({this.credentials, this.accountId});

  final Credentials? credentials;
  final String? accountId;

  @override
  List<Object?> get props => [credentials, accountId];

  AuthState copyWith({Credentials? credentials, String? accountId}) {
    return AuthState(
      credentials: credentials ?? this.credentials,
      accountId: accountId ?? this.accountId,
    );
  }

  factory AuthState.fromJson(Map<String, dynamic> json) {
    return AuthState(
      credentials: json['credentials'] != null ? Credentials.fromMap(json['credentials']) : null,
      accountId: json['accountId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'credentials': credentials?.toMap(),
      'accountId': accountId,
    };
  }
}

/// The initial state of AuthState
class AuthInitial extends AuthState {
  const AuthInitial() : super();
}
