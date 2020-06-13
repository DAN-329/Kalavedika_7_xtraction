import 'package:flutter/material.dart';

class RoundedButton2 extends StatefulWidget {
  RoundedButton2({this.text, this.color, this.onpressed});
  final String text;
  final Color color;
  final Function onpressed;
  @override
  _RoundedButton2State createState() => _RoundedButton2State();
}

class _RoundedButton2State extends State<RoundedButton2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: widget.color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: widget.onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
