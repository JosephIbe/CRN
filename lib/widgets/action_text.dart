import 'package:flutter/material.dart';
import 'package:nrc_railways/utils/constants.dart';

class ActionText extends StatelessWidget {

  final String title;
  final Function pressed;
  ActionText({@required this.title, @required this.pressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(title, style: kActionTextStyle,),
      ),
    );
  }
}
