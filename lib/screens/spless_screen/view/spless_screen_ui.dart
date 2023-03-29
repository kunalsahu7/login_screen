import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/shread_screen.dart';

class scren extends StatefulWidget {
  const scren({Key? key}) : super(key: key);

  @override
  State<scren> createState() => _screnState();
}

class _screnState extends State<scren> {
  @override
  Widget build(BuildContext context) {
    check();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 200,
            duration: Duration(
              seconds: 3,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> check() async {
    SHR shr = SHR();
    Map map = await shr.readshr();

    if (map['islogin'] == true) {
      Timer(Duration(seconds: 3), () {
          Navigator.pushReplacementNamed(context, 'Homescreen');
      });
    }
    else
    {
      Timer(Duration(
        seconds: 3
      ), () {
        Navigator.pushReplacementNamed(context, 'signin');
      });
    }
  }
}
