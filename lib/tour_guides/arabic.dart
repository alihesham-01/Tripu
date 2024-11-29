import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArabicTourGuide extends StatelessWidget {
  const ArabicTourGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 152,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(236, 236, 236, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            blurRadius: 5, // Softness of the shadow
            offset: Offset(0, 8), // Position of the shadow (x, y)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("assets/icons8-user-90.png"),
                Text(
                  "Ahmed Erfan ",
                style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Image.asset("assets/icons8-verified-20.png"),
                Spacer(),
                Image.asset("assets/icons8-rate-20.png"),
                Text(
                  "4.0",
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Image.asset("assets/icons8-saudi-arabia-20.png"),
                Text(
                  "Arabic",
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Price: 15\$ p/h",
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
