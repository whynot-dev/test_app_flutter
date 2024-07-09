import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:test_app_flutter/core/network/dio_helper.dart';
import 'package:test_app_flutter/core/network/network_info.dart';

import 'package:test_app_flutter/data/gateways/local/preferences_local_gateway.dart';


import 'package:test_app_flutter/localization/app_localizations.dart';

GetIt injection = GetIt.I;

Future setUpLocator() async {
  injection.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  injection.registerSingleton<PreferencesLocalGateway>(
    PreferencesLocalGateway(flutterSecureStorage: injection()),
  );
}

Future setUpLocatorWithDependencies({
  required BuildContext context,
  required GlobalKey<NavigatorState> navigatorKey,
}) async {
  injection.registerSingleton<AppLocalizations>(AppLocalizations.of(context));
}
