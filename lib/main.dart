import 'package:flutter/material.dart';
import 'package:login_screen/screens/home_screen/provider/homeprovider.dart';
import 'package:login_screen/screens/home_screen/view/home_screen_ui.dart';
import 'package:login_screen/screens/login_screen_ui/view/login_signin_screen.dart';
import 'package:login_screen/screens/login_screen_ui/view/login_signup_screen.dart';

import 'package:login_screen/screens/spless_screen/view/spless_screen_ui.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => scren(),
          'signin': (context) => signinsctreen(),
          'signup': (context) => signupscreen(),
          'Homescreen': (context) => HomeScreen(),
        },
      ),
    ),
  );
}
