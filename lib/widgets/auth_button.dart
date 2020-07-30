import 'package:flutter/material.dart';
import 'package:nrc_railways/utils/constants.dart';

class AuthButton extends StatelessWidget {

  final String title;
  final Function pressed;
  AuthButton({
    @required this.title,
    @required this.pressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: pressed,
        elevation: 2.0,
        padding: EdgeInsets.all(9.5),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(title.toUpperCase(), style: kLoginTextStyle,),
      ),
    );
  }
}
