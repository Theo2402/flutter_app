import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app8hybrid/providers/bluetooth-provider.dart';
import 'package:flutter_app8hybrid/views/connect-vieiw/connect-view.dart';
import 'package:flutter_app8hybrid/views/home-view/components/action-component.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:provider/provider.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';

class PasserelleLogin extends StatefulWidget {
  @override
  State<PasserelleLogin> createState() {
    return PasserelleLoginState();
  }
}

class PasserelleLoginState extends State<PasserelleLogin> {
  var questionIndex = 0;
  int dir;
  int isPressed;

  void answerQuestions5() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //print(questionIndex);
  }

  void answerQuestions2() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //print(questionIndex);
  }

  void answerQuestions3() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //print(questionIndex);
  }

  void answerQuestions4() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //ConnectProvider _connectProvider = Provider.of<ConnectProvider>(context);
    BluetoothProvider bluetoothProvider =
        Provider.of<BluetoothProvider>(context, listen: false);

    bool _buttonPressed = false;
    bool _loopActive = false;
    String direction = '';

    var questions = [
      '0',
      '1',
      '2',
      '3',
      '4',
    ];

    ScreenUtil.init(
      context,
      width: 415,
      height: 899.56,
    );
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0.w, -3.6.h),
            child:
                // Adobe XD layer: 'whoisbenjamin-KrcXl…' (shape)
                Container(
              width: 415.0.w,
              height: 899.6.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/boat2.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            width: 415.0.w,
            height: 159.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0.w, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(40.4.w, 70.0.h), //64.4.w, 73.0.h    80.4.w, 73.0.h
            child: SizedBox(
              width: 283.0.w,
              child: Text(
                'PASSERELLE',
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 26,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          //Text(questions.elementAt(questionIndex), ),
          //FloatingActionButton(
          //   child: Text(questions.elementAt(questionIndex)),
          //  onPressed: answerQuestions),

          //),

          //IconButton(
          //iconSize: 90.0,
          //icon: const Icon(Icons.arrow_circle_up_rounded),
          //tooltip: 'Increase volume by 10',
          //padding: EdgeInsets.fromLTRB(158.w, 330.h, 50.w, 10.h),
          //color: Colors.red,
          //onPressed: () {
          //answerQuestions4();
          //},
          //),

          //},
          //),
          //),

          //IconButton(
          //iconSize: 90.0,
          //icon: const Icon(Icons.arrow_circle_down_rounded),
          //tooltip: 'Increase volume by 10',
          //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
          //color: Colors.white,
          //onPressed: () {
          //answerQuestions2();
          //},
          //),
          //),

          Positioned(
            left: 199.w,
            bottom: 100.h,
            child: GestureDetector(
              onTapDown: (_) async {
                isPressed = 1;
                do {
                  direction = 'S';
                  print('long pressing'); // for testing
                  bluetoothProvider.write(direction);
                  await Future.delayed(Duration(milliseconds: 190));
                } while (isPressed != 0);
              },
              onTapUp: (_) => setState(() => isPressed = 0),
              child: FloatingActionButton(
                child: Icon(
                  Icons.arrow_circle_down_rounded,
                  color: Colors.white,
                ),
                splashColor: Colors.red,
                backgroundColor: Colors.transparent,
                //iconSize: 90,
                //onPressed: () {
                //direction = 'S';
                //bluetoothProvider.write(direction);
                //},
              ),
            ),
          ),

          Positioned(
            left: 199.w,
            bottom: 10.h,
            child: Container(
              child: GestureDetector(
                onTapDown: (_) async {
                  isPressed = 1;
                  do {
                    direction = 'S';
                    print('long pressing'); // for testing
                    bluetoothProvider.write(direction);
                    await Future.delayed(Duration(milliseconds: 190));
                  } while (isPressed != 0);
                },
                onTapUp: (_) => setState(() => isPressed = 0),
                child: FloatingActionButton(
                  child: Icon(
                    Icons.arrow_circle_down_rounded,
                    color: Colors.white,
                  ),
                  splashColor: Colors.red,
                  backgroundColor: Colors.transparent,
                  //iconSize: 90,
                  //onPressed: () {
                  //direction = 'S';
                  //bluetoothProvider.write(direction);
                  //},
                ),
              ),
            ),
          ),
          //Stack(
          //children: [
          //Placeholder(),
          Positioned(
            left: 199.w,
            bottom: 230.h,
            child: GestureDetector(
              onTapDown: (_) async {
                isPressed = 1;
                do {
                  direction = 'S';
                  print('long pressing'); // for testing
                  bluetoothProvider.write(direction);
                  await Future.delayed(Duration(milliseconds: 190));
                } while (isPressed != 0);
              },
              onTapUp: (_) => setState(() => isPressed = 0),
              //heroTag: null,
              //onPressed: () {
              // direction = 'N';
              //bluetoothProvider.write(direction);
              //answerQuestions2();
              //},
              //backgroundColor: Colors.blueGrey.withOpacity(0),
              //foregroundColor: Colors.white,
              child: Transform.scale(
                scale: 3.9,
                child: const Icon(Icons.arrow_circle_down_rounded,
                    color: Colors.white),

                //elevation: 12.0,
                //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
              ),
            ),
          ),
          //],
          //),

          //Stack(
          //children: [
          //Placeholder(),
          Positioned(
            left: 199.w,
            bottom: 430.h,
            child: GestureDetector(
              onTapDown: (_) async {
                isPressed = 1;
                do {
                  direction = 'N';
                  print('long pressing'); // for testing
                  bluetoothProvider.write(direction);
                  await Future.delayed(Duration(milliseconds: 190));
                } while (isPressed != 0);
              },
              onTapUp: (_) => setState(() => isPressed = 0),
              //heroTag: null,
              //onPressed: () {
              // direction = 'N';
              //bluetoothProvider.write(direction);
              //answerQuestions2();
              //},
              //backgroundColor: Colors.blueGrey.withOpacity(0),
              //foregroundColor: Colors.white,
              child: Transform.scale(
                scale: 3.9,
                child: const Icon(Icons.arrow_circle_up_rounded,
                    color: Colors.white),

                //elevation: 12.0,
                //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
              ),
            ),
          ),
          //],
          //),

          Positioned(
            left: 282.w,
            bottom: 330.h,
            child: GestureDetector(
              onTapDown: (_) async {
                isPressed = 1;
                do {
                  direction = 'W';
                  print('long pressing'); // for testing
                  bluetoothProvider.write(direction);
                  await Future.delayed(Duration(milliseconds: 190));
                } while (isPressed != 0);
              },
              onTapUp: (_) => setState(() => isPressed = 0),

              //child: InkWell(splashColor: Colors.white),
              //heroTag: null,
              //onPressed: () {
              // direction = 'W';
              //bluetoothProvider.write(direction);
              //answerQuestions2();
              //},
              //backgroundColor: Colors.blueGrey.withOpacity(0),
              //foregroundColor: Colors.red[800],
              child: Transform.scale(
                scale: 3.9,
                child: const Icon(MdiIcons.arrowRightBoldCircleOutline,
                    color: Colors.red),
                //backgroundColor: Colors.blueGrey.withOpacity(0),
                //foregroundColor: Colors.green[600],
                //child: Transform.scale(
                //scale: 3.9,
                //child: const Icon(MdiIcons.arrowRightBoldCircleOutline),

                //elevation: 12.0,
                //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
              ),
            ),
          ),

          //IconButton(
          //iconSize: 90.0,
          //icon: const Icon(MdiIcons.arrowRightBoldCircleOutline),
          //tooltip: 'Increase volume by 10',
          // padding: EdgeInsets.fromLTRB(235.w, 415.h, 50.w, 10.h),
          //color: Colors.green,
          // onPressed: () {
          //answerQuestions2();
          //},
          //),
          //),

          Positioned(
            left: 115.w,
            bottom: 330.h,
            child: GestureDetector(
              //heroTag: null,
              //onTapDown: (detail) {
              // direction = 'E';
              // dir = 2;
              // bluetoothProvider.write(direction);
              //},

              //onTapUp: (detail) {
              // direction = 'A';
              // bluetoothProvider.write(direction);

              //}

              onTapDown: (_) async {
                isPressed = 1;
                do {
                  direction = 'E';
                  print('long pressing'); // for testing
                  bluetoothProvider.write(direction);
                  await Future.delayed(Duration(milliseconds: 190));
                } while (isPressed != 0);
              },
              onTapUp: (_) => setState(() => isPressed = 0),

              //},

              //},

              //},

              //backgroundColor: Colors.blueGrey.withOpacity(0),
              //foregroundColor: Colors.red[800],

              child: Transform.scale(
                scale: 3.9,
                child: const Icon(MdiIcons.arrowLeftBoldCircleOutline,
                    color: Colors.green),
                //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
                //color: Colors.red,
              ),

              //elevation: 12.0,
              //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
            ),
          ),
          //),
          //),
          // ),
          //IconButton(
          //iconSize: 90.0,
          //icon: const Icon(MdiIcons.arrowLeftBoldCircleOutline),
          //tooltip: 'Increase volume by 10',
          //padding: EdgeInsets.fromLTRB(80.w, 415.h, 50.w, 10.h),
          //color: Colors.red,
          //onPressed: () {
          //answerQuestions3();
          //},
          //),
          //),

          //FloatingActionButton(
          //onPressed: () {
          // answerQuestions2();
          //},
          //child: Text(questions[questionIndex]),
          //backgroundColor: Colors.green,
          //),
          //);
          //}
//}

          //}

          //),
          //),

          //Positioned(
          //left: 300.w,
          //bottom: 10.h,
          //child: FloatingActionButton(
          //heroTag: null,
          //onPressed: () {
          //  answerQuestions4();
          //},
          //child: Text(questions[questionIndex]),
          //),
          //),

          //ActionComponent(
          //title: 'Connect',
          //subtitle: 'Pair a bluetooth module',
          //image: 'assets/bluetooth.png',
          //onPressed: () {
          // Navigator.of(context).pushNamed('/ConnectView',
          //    arguments: {'ANIM': 'PLATFORM-D', 'DATA': {}});
          //},
          //),

          Positioned(
            left: 337.w, //340   10   40
            bottom: 758.h, //606  655  55
            child: FloatingActionButton(
              heroTag: 'unq1',
              onPressed: () {
                //Navigator.of(context).pop();

                Navigator.of(context).pushNamed('/ConnectView',
                    arguments: {'ANIM': 'PLATFORM-D', 'DATA': {}});

                //Navigator.of(context).pop();
                //pageRoute(
                //page: ChangeNotifierProvider(
                //  create: (_) => ConnectProvider(),
                //  child: ConnectView()));
                //);
                //Navigator.of(context, rootNavigator: true).maybePop();
              },
              backgroundColor: Colors.blue[900],
              foregroundColor: Colors.white,
              child: Transform.scale(
                scale: 1.2,
                child: const Icon(MdiIcons.bluetooth),
                //elevation: 12.0,
                //padding: EdgeInsets.fromLTRB(158.w, 500.h, 50.w, 10.h),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
