import 'package:flutter/material.dart';

class OTPWidget extends StatelessWidget {
  OTPWidget({
    this.rightPadding = 28,
    Key? key,
  }) : super(key: key);
  double rightPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: SizedBox(
        height: 60,
        width: 60,
        child: TextField(
          textAlign: TextAlign.center,
          cursorColor: Colors.black,
          
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              filled: true,
              fillColor: Color(0xFFF2F2F2),
              hintText: '*',
              hintStyle: TextStyle(fontSize: 37, color: Color(0xFFB6B7B7)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
