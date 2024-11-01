// coverage:ignore-file

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';
import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/util/demo_helper.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';

import '../../util/api_service.dart';

class AuthRepository {
  Auth0 auth0Client;

  AuthRepository({required this.auth0Client});

  Future<DatabaseUser> signUp(String email, String password) async {
    if (DemoHelper.isDemoAccount(email)) {
      GetIt.I.unregister<Auth0>();
      GetIt.I.registerSingleton<Auth0>(
        Auth0(DemoHelper.demoAuthDomain, DemoHelper.demoAuthClientId),
      );
      auth0Client = GetIt.I.get<Auth0>();
    }
    return auth0Client.api.signup(
      email: email,
      password: password,
      connection: "Username-Password-Authentication",
    );
  }

  Future<void> connectAccount(String activationCode) async {
    try {
      await ApiService.getInstance()
          .apiClient
          .authConnectPost(body: ConnectAccountDto(code: activationCode));
    } catch (e) {
      print("error: $e");
    }
  }

  Future<Credentials> logIn(String email, String password) {
    String audience = FlavorConfig.instance.variables["api-audience"]!;
    if (DemoHelper.isDemoAccount(email)) {
      GetIt.I.unregister<Auth0>();
      GetIt.I.registerSingleton<Auth0>(
        Auth0(DemoHelper.demoAuthDomain, DemoHelper.demoAuthClientId),
      );
      auth0Client = GetIt.I.get<Auth0>();
      audience = DemoHelper.demoAuthAudience;
    }
    return auth0Client.api.login(
      audience: audience,
      usernameOrEmail: email,
      password: password,
      connectionOrRealm: "Username-Password-Authentication",
    );
  }

  Future<AccountInfoDto?> getAuthInfos() async {
    try {
      final response = await ApiService.getInstance().apiClient.authGet();
      if (response.isSuccessful) {
        return response.body;
      } else if (response.statusCode == 401) {
        await auth0Client.credentialsManager.clearCredentials();
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<TenantProfileDto?> getProfile() async {
    final response =
        await ApiService.getInstance().apiClient.contactsProfileGet();
    if (response.isSuccessful && response.body != null) {
      return response.body;
    }
    return null;
  }

  Future<void> logOut() async {
    await auth0Client.credentialsManager.clearCredentials();
    navigatorKey.currentState?.pushNamedAndRemoveUntil('/', (route) => false);
  }

  Future<void> storeCredentials(Credentials credentials) {
    return auth0Client.credentialsManager.storeCredentials(credentials);
  }

  Future<Credentials?> getCredentials() async {
    final hasCredentials =
        await auth0Client.credentialsManager.hasValidCredentials();
    if (!hasCredentials) {
      return null;
    }
    return auth0Client.credentialsManager.credentials();
  }

  Future<void> updateProfile(String tenantId, String? email, String? phone) {
    final dto =
        UpdateContactDetailsDto(id: tenantId, email: email, phone: phone);
    return ApiService.getInstance()
        .apiClient
        .contactsContactDetailsPut(body: dto);
  }
}
