import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nrc_railways/utils/constants.dart';
import 'package:nrc_railways/utils/strings.dart';
import 'package:nrc_railways/widgets/action_text.dart';
import 'package:nrc_railways/widgets/auth_button.dart';
import 'package:nrc_railways/widgets/logo_widget.dart';
import 'package:nrc_railways/widgets/nrc_text_field.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
                      height: 15.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          NRCTextInputField(
                            isPhone: false,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            labelText: 'Full Name',
                            hintText: 'First and Last Name',
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white, ),
                            maxLength: 25,
                            maxLines: 1,
                            decoration: loginInputDecors.copyWith(
                                counterText: '',
                                prefixIcon: Icon(Icons.email, color: Colors.white,),
                                labelText: 'Email Address',
                                labelStyle: TextStyle(color: Colors.white,),
                                hintText: 'Enter Your Email Address',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                )
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
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
                          AuthButton(title: 'Proceed', pressed: ()=>  Navigator.of(context).pushNamed(otpRoute)),
                          SizedBox(
                            height: 20.0,
                          ),
                          ActionText(
                            title: 'Login to Your Account',
                            pressed: ()=> Navigator.of(context).pushNamed(loginRoute),
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
