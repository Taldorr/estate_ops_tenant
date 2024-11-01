import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:equatable/equatable.dart';
import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';
import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/auth/pages/activation_page.dart';
import 'package:estate_ops_tenant/util/api_service.dart';
import 'package:estate_ops_tenant/util/demo_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../dashboard/pages/dashboard_page.dart';
import '../repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthInitial()) {
    on<InitAuthEvent>(_onInitAuthEvent);
    on<LoginAuthEvent>(_onLoginAuthEvent);
    on<LogoutAuthEvent>(_onLogoutAuthEvent);
    on<GetProfileEvent>(_onGetProfileEvent);
    on<ChangeLanguageEvent>(_onChangeLanguageEvent);
    on<OnboardingCompletedEvent>(_onOnboardingCompletedEvent);
    on<UpdateProfileEvent>(_onUpdateProfileEvent);
    on<SignupAuthEvent>(_onSignupAuthEvent);
    on<ConnectAuthEvent>(_onConnectAuthEvent);
  }

  Future<void> _onInitAuthEvent(
      InitAuthEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loading: true));
    final credentials = await _authRepository.getCredentials();
    emit(state.copyWith(credentials: credentials));
    final accountDto = await _authRepository.getAuthInfos();
    emit(state.copyWith(accountId: accountDto?.id, loading: false));
    if (credentials != null && accountDto != null) {
      add(const GetProfileEvent());
    }
  }

  Future<void> _onLoginAuthEvent(
      LoginAuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(
        loading: true,
        credentialsWrong: false,
        somethingWrong: false,
      ));
      final credentials = await _authRepository.logIn(
        event.email,
        event.password,
      );
      await _authRepository.storeCredentials(credentials);
      emit(state.copyWith(credentials: credentials));

      // If the user is a demo user, we need to send the requests to the demo API
      if (DemoHelper.isDemoAccount(event.email)) {
        emit(state.copyWith(isDemo: true));
        ApiService.init(auth0Client: GetIt.instance<Auth0>(), isDemo: true);
      }

      final accountDto = await _authRepository.getAuthInfos();
      emit(state.copyWith(accountId: accountDto?.id));
      navigatorKey.currentState?.pushNamed(DashboardPage.route);
      if (accountDto != null) {
        add(const GetProfileEvent());
      }
    } on ApiException catch (e) {
      if (e.isInvalidCredentials) {
        emit(state.copyWith(loading: false, credentialsWrong: true));
      } else {
        emit(state.copyWith(loading: false, somethingWrong: true));
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _onLogoutAuthEvent(
      LogoutAuthEvent event, Emitter<AuthState> emit) async {
    emit(const AuthInitial());
    await _authRepository.logOut();
  }

  Future<void> _onGetProfileEvent(
      GetProfileEvent event, Emitter<AuthState> emit) async {
    try {
      if (state.profile?.email != null &&
          DemoHelper.isDemoAccount(state.profile!.email!)) {
        emit(state.copyWith(isDemo: true));
        ApiService.init(auth0Client: GetIt.instance<Auth0>(), isDemo: true);
      }
      emit(state.copyWith(loading: true));
      final profile = await _authRepository.getProfile();
      if (profile != null) {
        emit(state.copyWith(profile: profile, loading: false));
        navigatorKey.currentState?.pushNamed(DashboardPage.route);
      } else if (state.credentials != null) {
        // If the profile is not set, the user has to activate the account
        emit(state.copyWith(loading: false));
        navigatorKey.currentState?.pushNamed(ActivationPage.route);
      }
    } catch (e) {
      print(e);
    }
  }

  void _onChangeLanguageEvent(
      ChangeLanguageEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(locale: event.locale));
  }

  void _onOnboardingCompletedEvent(
      OnboardingCompletedEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(onboardingCompleted: true));
  }

  void _onUpdateProfileEvent(
      UpdateProfileEvent event, Emitter<AuthState> emit) async {
    if (state.profile == null) return;
    await _authRepository.updateProfile(
      state.profile!.contactId,
      event.email,
      event.phone,
    );
    add(const GetProfileEvent());
  }

  void _onSignupAuthEvent(
      SignupAuthEvent event, Emitter<AuthState> emit) async {
    try {
      await _authRepository.signUp(event.email, event.password);
      emit(state.copyWith(loading: false));
      navigatorKey.currentState?.pushNamed(LoginPage.route);
      add(LoginAuthEvent(email: event.email, password: event.password));
    } on ApiException catch (e) {
      emit(state.copyWith(loading: false, somethingWrong: true));
      print(e);
    } catch (e) {
      print(e);
    }
  }

  void _onConnectAuthEvent(
      ConnectAuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(loading: true));
      await _authRepository.connectAccount(event.activationCode);
      emit(state.copyWith(loading: false));
      add(const GetProfileEvent());
    } catch (e) {
      print(e);
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
