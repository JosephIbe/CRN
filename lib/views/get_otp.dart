import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nrc_railways/utils/constants.dart';
import 'package:nrc_railways/utils/strings.dart';
import 'package:nrc_railways/widgets/auth_button.dart';
import 'package:nrc_railways/widgets/back_btn.dart';
import 'package:nrc_railways/widgets/logo_widget.dart';

class GetOTP extends StatefulWidget {
  @override
  _GetOTPState createState() => _GetOTPState();
}

class _GetOTPState extends State<GetOTP> {

  final FocusNode secondInput = FocusNode();
  final FocusNode thirdInput = FocusNode();
  final FocusNode fourthInput = FocusNode();
  final FocusNode fifthInput = FocusNode();
  final FocusNode sixthInput = FocusNode();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleBackButton(
                    pressed: () => Navigator.pop(context),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                LogoWidget(),
                SizedBox(height: 50.0,),
                Text(
                  'Enter The One Time Password (OTP) sent on your phone number to proceed',
                  textAlign: TextAlign.center,
                  style: kRegularHeadingsTextStyle,
                ),
                SizedBox(height: 50.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            counterText: '',
                              border: InputBorder.none
                          ),
                          onSubmitted: (value){
                            FocusScope.of(context).requestFocus(secondInput);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          focusNode: secondInput,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none
                          ),
                          onSubmitted: (value){
                            FocusScope.of(context).requestFocus(thirdInput);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          focusNode: thirdInput,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none
                          ),
                          onSubmitted: (value){
                            FocusScope.of(context).requestFocus(fourthInput);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          focusNode: fourthInput,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none
                          ),
                          onSubmitted: (value){
                            FocusScope.of(context).requestFocus(fifthInput);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          focusNode: fifthInput,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none
                          ),
                          onSubmitted: (value){
                            FocusScope.of(context).requestFocus(sixthInput);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: TextField(
                          focusNode: sixthInput,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          autofocus: true,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            counterText: '',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.0,),
                AuthButton(title: 'Validate OTP', pressed: ()=> navigateHome(context)),
                SizedBox(height: 30.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateHome(BuildContext context){
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('Personal Data Collection and Permissions'),
        content:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(allPermissionsText, style: kAllPermsReqTextStyle,),
          ),
        actions: <Widget>[
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Grant Access'),
            onPressed: ()=> Navigator.of(context).pop(),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Deny', style: TextStyle(color: Colors.redAccent),),
            onPressed: ()=> Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }

}
