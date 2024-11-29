import 'package:flutter/material.dart';

class Mitsubishi extends StatelessWidget {
  const Mitsubishi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(218, 218, 218, 1),
      ),
      child: Center(
        child: Text("Mitsubishi",style:
        TextStyle(
          color: Color.fromRGBO(114, 114, 114, 1),
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),),
      ),
    );
  }
}
