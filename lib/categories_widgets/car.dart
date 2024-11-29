import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../categories_main/cars_main.dart';

class CarCategory extends StatelessWidget {
  const CarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Cars()));
      },
      child: SizedBox(
        width: 68,
        height: 93,
        child: Column(
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 244, 244, 1),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      blurRadius: 3, // Spread of the shadow (makes it soft)
                      offset: Offset(0, 0), // Position of the shadow),]
                    )
                  ]),
              child: Image.asset('assets/cars.png'),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Cars",
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
