import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import '../environments/environments.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OneSignal.shared.init(oneSignalAppID);

    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
