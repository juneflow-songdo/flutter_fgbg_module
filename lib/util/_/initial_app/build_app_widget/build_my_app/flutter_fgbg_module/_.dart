import 'package:easy_event_bus/easy_event_bus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import '../../../../../../main.dart';

@CoverMyApp()
Widget Function() coverFlutterFgbgModule(Widget Function() materialAppBuilder) {

  if (defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS) {
    return () => FGBGNotifier(
      onEvent: (event) {
        if (event == FGBGType.foreground) {
          EasyEventBus.fire('App is in foreground', true);
        } else {
          EasyEventBus.fire('App is in background', true);

        }
      },
      child: materialAppBuilder(),
    );
  }


  return () => materialAppBuilder();
}
