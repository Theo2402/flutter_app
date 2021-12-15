import 'dart:io';

import 'package:flutter_app8hybrid/components/pageroute-component.dart';
import 'package:flutter_app8hybrid/providers/bluetooth-provider.dart';
import 'package:flutter_app8hybrid/routes.dart';
import 'package:flutter_app8hybrid/styles.dart';
import 'package:flutter_app8hybrid/views/home-view/home-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app8hybrid/PasserelleLogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BluetoothProvider bluetoothProvider = BluetoothProvider();
  await bluetoothProvider.startBluetooth();
  runApp(ChangeNotifierProvider.value(value: bluetoothProvider, child: App()));
}

class App extends StatelessWidget {
  Widget _buildiOS(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Duino',
      theme: Styles.cupertinoTheme,
      initialRoute: '/HomeView',
      onGenerateInitialRoutes: (String initalRoute) =>
          [pageRoute(page: PasserelleLogin(), animation: null)],
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Duino',
      theme: Styles.themeDataLight,
      darkTheme: Styles.themeDataDark,
      initialRoute: '/HomeView',
      onGenerateInitialRoutes: (String initalRoute) =>
          [pageRoute(page: PasserelleLogin(), animation: null)],
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS) ? _buildiOS(context) : _buildAndroid(context);
  }
}
