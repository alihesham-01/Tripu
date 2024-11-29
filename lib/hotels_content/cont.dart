import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext Context) {
    return Container(
      height: 26,
      width: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(218, 218, 218, 1),
      ),
      child: Center(
        child: Text("Hotel",style:
        TextStyle(
          color: Color.fromRGBO(114, 114, 114, 1),
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),),
      ),
    );
  }
}
