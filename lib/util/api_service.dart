import 'dart:async';
import 'dart:io';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:chopper/chopper.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import '../api/outputs/swagger.swagger.dart';
import 'print_interceptor.dart';

class ApiService {
  late Swagger apiClient;

  static final ApiService _instance = ApiService._internal();

  static Future<ApiService> init(
      {required Auth0 auth0Client, bool isDemo = false}) async {
    final baseUrl = Uri.parse(isDemo
        ? Constants.demoApiBaseUrl
        : FlavorConfig.instance.variables["api-base-url"]);

    _instance.apiClient = Swagger.create(
      baseUrl: baseUrl,
      interceptors: [
        ApiAuthInterceptor(auth0Client),
        PrintRequestInterceptor(),
        PrintResponseInterceptor(),
      ],
    );

    return _instance;
  }

  static ApiService getInstance() => _instance;

  ApiService._internal();
}

class ApiAuthInterceptor implements RequestInterceptor {
  final Auth0 auth0Client;

  const ApiAuthInterceptor(this.auth0Client);

  @override
  FutureOr<Request> onRequest(Request request) async {
    final c = await auth0Client.credentialsManager.credentials();

    final updatedRequest = applyHeader(
      request,
      HttpHeaders.authorizationHeader,
      'Bearer ${c.accessToken}',
      override: false,
    );

    return updatedRequest;
  }
}
