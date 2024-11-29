import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class hotel extends StatelessWidget {
  const hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/map1.png",width: 500,height: 500,)

            ]),
      ),
    );
  }
}
