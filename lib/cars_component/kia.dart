import 'package:flutter/material.dart';

class Kia extends StatelessWidget {
  const Kia ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(218, 218, 218, 1),
      ),
      child: Center(
        child: Text("Kia",style:
        TextStyle(
          color: Color.fromRGBO(114, 114, 114, 1),
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),),
      ),
    );
  }
}
