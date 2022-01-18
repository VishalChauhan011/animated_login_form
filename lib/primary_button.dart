import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {

  PrimaryButton({required this.textButton});
  final String textButton;

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:const EdgeInsets.all(20),
      //margin: const EdgeInsetsDirectional.all(32),
      decoration: BoxDecoration(
        color: const Color(0xFF40284A),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          widget.textButton,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
