

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension ContexExtention on BuildContext{

  void removeStatusBarFromScreen({required bool isDark}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: isDark? Brightness.dark : Brightness.light,
    ));
  }

}