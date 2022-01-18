import 'package:flutter/material.dart';


class CustomButton extends StatefulWidget {


  CustomButton({required this.txtButton});
  final String txtButton;


  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:const EdgeInsets.all(20),
      //margin: const EdgeInsetsDirectional.all(32),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF40284A),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          widget.txtButton,
          style: const TextStyle(
            color: Color(0xFF40284A),
            fontFamily: 'Nunito',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
