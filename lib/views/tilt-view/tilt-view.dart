import 'dart:io';

import 'package:flutter_app8hybrid/components/adaptive-components/adaptive-iconbutton.dart';
import 'package:flutter_app8hybrid/components/adaptive-components/adaptive-navbar.dart';
import 'package:flutter_app8hybrid/components/adaptive-components/adaptive-scaffold.dart';
import 'package:flutter_app8hybrid/components/state-component.dart';
import 'package:flutter_app8hybrid/styles.dart';
import 'package:flutter_app8hybrid/views/tilt-view/components/ring-component.dart';
import 'package:flutter/cupertino.dart';

class TiltView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
        navBar: AdaptiveNavBar(
          backgroundColor: Styles.of(context).barBackgroundColor,
          leading: AdaptiveIconButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.back,
                color: Styles.of(context).textStyle.color,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          middle: Text(
            'Tilt Pad',
            style: Styles.of(context).navTitleTextStyle,
          ),
          trailing: Padding(
            padding: Platform.isIOS
                ? const EdgeInsets.fromLTRB(0, 0, 16, 0)
                : EdgeInsets.only(),
            child: StateComponent(),
          ),
        ),
        child: RingComponent());
  }
}
