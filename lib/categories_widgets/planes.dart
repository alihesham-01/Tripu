
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../categories_main/planes_main.dart';

class Planes extends StatelessWidget {
  const Planes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 93,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,  PageTransition(
                  child: PlanesMain(),
                  type: PageTransitionType.bottomToTopPop,
                childCurrent: PlanesMain(),

              ));
            },
            child: Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 244, 244, 1),
                borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      blurRadius: 3, // Spread of the shadow (makes it soft)
                      offset: Offset(0, 0), // Position of the shadow),]
                    )]
              ),
              child: Image.asset('assets/plane.png'),

            ),
          ),
          SizedBox(height: 7,),
          Text("Planes",
          style: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
          )
        ],
      ),
    );
  }
}
