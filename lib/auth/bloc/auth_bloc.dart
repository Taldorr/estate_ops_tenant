import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../dashboard/pages/dashboard_page.dart';
import '../../main.dart';
import '../repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthInitial()) {
    on<InitAuthEvent>(_onInitAuthEvent);
    on<LoginAuthEvent>(_onLoginAuthEvent);
    on<LogoutAuthEvent>(_onLogoutAuthEvent);
  }

  Future<void> _onInitAuthEvent(InitAuthEvent event, Emitter<AuthState> emit) async {
    final credentials = await _authRepository.getCredentials();
    emit(state.copyWith(credentials: credentials));
    final accountDto = await _authRepository.getAuthInfos();
    emit(state.copyWith(accountId: accountDto?.id));
    if (credentials != null) {
      navigatorKey.currentState?.pushNamed(DashboardPage.route);
    }
  }

  Future<void> _onLoginAuthEvent(LoginAuthEvent event, Emitter<AuthState> emit) async {
    try {
      final credentials = await _authRepository.logIn();
      emit(state.copyWith(credentials: credentials));
      final accountDto = await _authRepository.getAuthInfos();
      emit(state.copyWith(accountId: accountDto?.id));
      navigatorKey.currentState?.pushNamed(DashboardPage.route);
    } catch (e) {
      print(e);
    }
  }

  Future<void> _onLogoutAuthEvent(LogoutAuthEvent event, Emitter<AuthState> emit) async {
    await _authRepository.logOut();
    emit(state.copyWith(credentials: null));
  }

  UserProfile? get user => state.credentials?.user;

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
