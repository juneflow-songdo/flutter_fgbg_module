import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import '../../../../../../main.dart';

@CoverMyApp()
Widget Function() coverFlutterFgbgModule(Widget Function() materialAppBuilder) {

  if (defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS) {
    materialAppBuilder = () {
      return FGBGNotifier(
        onEvent: (event) {
          if (event == FGBGType.foreground) {
            print('App is in foreground');
          } else {
            print('App is in background');
          }
        },
        child: materialAppBuilder(),
      );
    };
  }


  return () => materialAppBuilder();
}
