import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tripu/cities_main/alexandria_main.dart';

class Alexandria extends StatelessWidget {
  const Alexandria({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: AlexandriaMain(),
                type: PageTransitionType.rightToLeftWithFade));
      },
      child: Container(
        width: 126,
        height: 177,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromRGBO(226, 226, 226, 1)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                blurRadius: 3, // Spread of the shadow (makes it soft)
                offset: Offset(0, 0), // Position of the shadow),]
              )]
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0,right: 3,bottom: 3),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/Alexandria.jpg",
                        fit: BoxFit.cover, // Ensure the image scales properly
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Alexandria",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 10,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Text(
                        "Egypt",
                        style: GoogleFonts.inter(
                            fontSize: 8,
                            color: Color.fromRGBO(0, 0, 0, .5),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
