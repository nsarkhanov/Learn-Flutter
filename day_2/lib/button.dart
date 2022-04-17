import "package:flutter/material.dart";

class Button extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String ButtonText;

  Button(this.onPressed, this.ButtonText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(ButtonText),
    );
  }
}
