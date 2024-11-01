import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'util/api_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  _initFlavors();
  GetIt.I.registerSingleton<Auth0>(Auth0(
    FlavorConfig.instance.variables["auth0-domain"]!,
    FlavorConfig.instance.variables["auth0-client-id"]!,
  ));
  ApiService.init(
    auth0Client: GetIt.instance<Auth0>(),
  );
  runApp(const TenantApp());
}

void _initFlavors() {
  FlavorConfig(
    name: "PROD",
    color: Colors.red,
    variables: {
      "auth0-domain": "dev-estate-ops.eu.auth0.com",
      "auth0-client-id": "xOZJUbe1lfb1tK8zZriMmTnKcI7MkqKB",
      "api-base-url": "https://api-demo.estate-ops.de",
      "api-audience": "estate-ops-api",
    },
  );
}
