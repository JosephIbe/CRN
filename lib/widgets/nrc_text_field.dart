import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nrc_railways/utils/constants.dart';

class NRCTextInputField extends StatefulWidget {

  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final bool isPhone;
  final bool isEmail;

  NRCTextInputField({
    @required this.labelText,
    @required this.hintText,
    @required this.prefixIcon,
    @required this.isPhone,
    @required this.isEmail,
  });

  @override
  _NRCTextInputFieldState createState() => _NRCTextInputFieldState();
}

class _NRCTextInputFieldState extends State<NRCTextInputField> {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, ),
      maxLength: widget.isPhone ? 14 : 25,
      maxLines: 1,
      decoration: loginInputDecors.copyWith(
        counterText: '',
        prefixIcon: widget.prefixIcon,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Colors.white,),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        )
      ),
//      keyboardType: widget.isPhone ? TextInputType.phone : TextInputType.text,
      keyboardType: widget.isPhone ? TextInputType.phone : TextInputType.text,
      controller: controller,
    );
  }
}
