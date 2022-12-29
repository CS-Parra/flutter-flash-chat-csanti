import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({this.colorButton, this.textButton, @required this.onPressedFunction});

  final Color colorButton;
  final String textButton;
  final Function onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colorButton,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            textButton,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}