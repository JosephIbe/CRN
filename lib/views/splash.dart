import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nrc_railways/utils/strings.dart';
import 'package:nrc_railways/widgets/logo_widget.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    startTimerAndNavigate();
  }

  startTimerAndNavigate(){
    Timer(Duration(milliseconds: 1500), (){
      Navigator.of(context).pushReplacementNamed(loginRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor
        ),
        child: Center(
          child: LogoWidget(),
        ),
      ),
    );
  }
}
