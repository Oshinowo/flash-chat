import 'package:flutter/material.dart';

class RoundCustomButton extends StatelessWidget {
  RoundCustomButton(
      {@required this.buttonColour,
      this.buttonLabel,
      @required this.onPressButton});

  final Color buttonColour;
  final Function onPressButton;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressButton,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonLabel,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
