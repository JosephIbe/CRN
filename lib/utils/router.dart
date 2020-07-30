import 'package:flutter/material.dart';
import 'package:nrc_railways/utils/strings.dart';
import 'package:nrc_railways/views/get_otp.dart';
import 'package:nrc_railways/views/login.dart';
import 'package:nrc_railways/views/register.dart';
import 'package:nrc_railways/views/splash.dart';

class Router {

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case splashRoute:
        return MaterialPageRoute(builder: (_)=> Splash());
        break;
      case registerRoute:
        return MaterialPageRoute(builder: (_)=> Register());
        break;
      case loginRoute:
        return MaterialPageRoute(builder: (_)=> Login());
        break;
      case otpRoute:
        return MaterialPageRoute(builder: (_)=> GetOTP());
        break;
      default:
        return MaterialPageRoute(builder: (_)=> Scaffold(
          body: Center(
            child: Text('No route specified for ${settings.name}'),
          ),
        ));
    }
  }

}