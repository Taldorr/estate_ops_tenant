// coverage:ignore-file

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import '../../util/api_service.dart';

class AuthRepository {
  final Auth0 auth0Client;

  AuthRepository({required this.auth0Client});

  Future<Credentials> logIn() {
    return auth0Client.webAuthentication().login(
          audience: FlavorConfig.instance.variables["api-audience"]!,
          redirectUrl:
              "de.estate-ops.estate-ops://de.estate-ops/ios/de.estate-ops.estate-ops/callback",
        );
  }

  Future<AccountInfoDto?> getAuthInfos() async {
    try {
      final response = await ApiService.getInstance().apiClient.authGet();
      if (response.isSuccessful) {
        return response.body;
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<void> logOut() async {
    await auth0Client.credentialsManager.clearCredentials();
    return auth0Client.webAuthentication().logout();
  }

  Future<Credentials?> getCredentials() async {
    final hasCredentials = await auth0Client.credentialsManager.hasValidCredentials();
    if (!hasCredentials) {
      return null;
    }
    return auth0Client.credentialsManager.credentials();
  }
}
