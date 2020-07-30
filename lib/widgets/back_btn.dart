import 'package:flutter/material.dart';

class CircleBackButton extends StatelessWidget {

  final Function pressed;
  CircleBackButton({@required this.pressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: Center(
        child: IconButton(
          onPressed: pressed,
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor,),
        ),
      ),
    );
  }
}
