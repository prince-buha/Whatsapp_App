import 'package:flutter/cupertino.dart';

import '../scr/Homepage/homepage.dart';

class Routes {
  static String myhome = '/';

  static Map<String, WidgetBuilder> myRoutes = {
    myhome: (context) => const Homepage(),
  };
}
