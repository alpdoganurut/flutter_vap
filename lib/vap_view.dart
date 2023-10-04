import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vap/vap_view_for_android.dart';
import 'package:flutter_vap/vap_view_for_ios.dart';

class VapView extends StatelessWidget {

  final double forcedAspectRatio;

  const VapView({Key? key, this.forcedAspectRatio=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget child = const SizedBox();

    if (Platform.isAndroid) {
      child = Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 1),
        ),
        child: VapViewForAndroid()
      );
    } else if (Platform.isIOS) {
      child = VapViewForIos();
    }

    // if(forcedAspectRatio>0) {
    //   return AspectRatio(
    //     aspectRatio: forcedAspectRatio,
    //     child: FittedBox(
    //       fit: BoxFit.fill, //force aspect ratio
    //       child: child,
    //     ),
    //   );
    // }
    return child;
  }
}
