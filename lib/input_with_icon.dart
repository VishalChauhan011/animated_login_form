import 'package:flutter/material.dart';

class InputWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  InputWithIcon({required this.icon,required this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 15,end: 15),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xFFC7C7C7),
              width: 2
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: <Widget>[
          Container(
              width: 60,
              child: Icon(
                widget.icon,
                size: 20,
                color: const Color(0xFFB9B9B9),
              )
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding:const  EdgeInsets.symmetric(vertical: 20),
                  border: InputBorder.none,
                  hintText: widget.hint
              ),
            ),
          )
        ],
      ),
    );
  }
}
