import 'package:flutter_app8hybrid/components/pageroute-component.dart';
import 'package:flutter_app8hybrid/views/about-view/about-view.dart';
import 'package:flutter_app8hybrid/views/connect-vieiw/connect-view.dart';
import 'package:flutter_app8hybrid/views/connect-vieiw/providers/connect-provider.dart';
import 'package:flutter_app8hybrid/views/home-view/home-view.dart';
import 'package:flutter_app8hybrid/views/joystick-view/joystick-view.dart';
import 'package:flutter_app8hybrid/views/remote-view/providers/remote-provider.dart';
import 'package:flutter_app8hybrid/views/remote-view/remote-view.dart';
import 'package:flutter_app8hybrid/views/tilt-view/tilt-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, dynamic> args = settings.arguments;
    final String animation = args['ANIM'];

    switch (settings.name) {
      case '/HomeView':
        return pageRoute(page: HomeView(), animation: animation);
      case '/ConnectView':
        return pageRoute(
            page: ChangeNotifierProvider(
                create: (_) => ConnectProvider(), child: ConnectView()),
            animation: animation);
      case '/RemoteView':
        return pageRoute(
            page: ChangeNotifierProvider(
                create: (_) => RemoteProvider(), child: RemoteView()),
            animation: animation);
      case '/JoystickView':
        return pageRoute(page: JoystickView(), animation: animation);
      case '/TiltView':
        return pageRoute(page: TiltView(), animation: animation);
      case '/AboutView':
        return pageRoute(page: AboutView(), animation: animation);
      default:
        return null;
    }
  }
}
