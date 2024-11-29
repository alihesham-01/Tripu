import 'package:flutter/material.dart';

class Apart extends StatelessWidget {
  const Apart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(218, 218, 218, 1),
      ),
      child: Center(
        child: Text("Apartments",style:
        TextStyle(
          color: Color.fromRGBO(114, 114, 114, 1),
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),),
      ),
    );
  }
}
