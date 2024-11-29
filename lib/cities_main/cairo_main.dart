import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CairoMain extends StatefulWidget {
  const CairoMain({super.key});

  @override
  State<CairoMain> createState() => _CairoMainState();
}

class _CairoMainState extends State<CairoMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap:(){Navigator.pop(context);},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 237, 238, 1),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Color.fromRGBO(13, 25, 29, 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // Same border radius as ClipRRect
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 5, // Softness of the shadow
                        offset: Offset(0, 15), // Position of the shadow (x, y)
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/Cairo.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 473,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Row(
                    children: [
                      Text(
                        "Cairo",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Text(
                    "Mohamed Ali Castle",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(244, 244, 244, 1),
                        ),
                        child: Image.asset("assets/icons8-location-20.png"),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Cairo,Egypt",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(244, 244, 244, 1),
                        ),
                        child: Image.asset("assets/icons8-watch-20.png"),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "OPEN : 07:00 AM",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // Same border radius as ClipRRect
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 3, // Softness of the shadow
                        offset: Offset(0, 15), // Position of the shadow (x, y)
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/Cairomap.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
