import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nrc_railways/utils/strings.dart';
import 'package:nrc_railways/widgets/action_text.dart';
import 'package:nrc_railways/widgets/auth_button.dart';
import 'package:nrc_railways/widgets/logo_widget.dart';
import 'package:nrc_railways/widgets/nrc_text_field.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(16.0),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    LogoWidget(),
                    SizedBox(
                      height: 150.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          NRCTextInputField(
                            isPhone: true,
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            labelText: 'Phone Number',
                            hintText: 'Enter Your Phone Number',
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          AuthButton(title: 'Get OTP', pressed: ()=>  Navigator.of(context).pushNamed(otpRoute)),
                          SizedBox(
                            height: 20.0,
                          ),
                          ActionText(
                            title: 'Register With Us Now',
                            pressed: ()=> Navigator.of(context).pushNamed(registerRoute),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
