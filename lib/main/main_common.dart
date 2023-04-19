import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../app.dart';
import '../injectable/injection.dart';
import '../utilities/config/easy_loading_config.dart';

void mainCommon() {
  WidgetsFlutterBinding.ensureInitialized();

  Future<void> startApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    configureDependencies();
    configLoading();
    await Firebase.initializeApp();
    runApp(
      App(),
    );
  }

  runZonedGuarded(
    () {
      startApp();
    },
    (error, stackTrace) {},
  );
}
