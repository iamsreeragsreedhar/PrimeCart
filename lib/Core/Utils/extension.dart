import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension MediaqueryCommon on BuildContext{
  MediaQueryData get MdQ => MediaQuery.of(this);
  double get ScreenHeight => MdQ.size.height;
  double get ScreenWidth => MdQ.size.width;
}


extension SizedBoxExtension on num {
  SizedBox get heightBox => SizedBox(height: toDouble());
  SizedBox get widthBox => SizedBox(width: toDouble());
}





