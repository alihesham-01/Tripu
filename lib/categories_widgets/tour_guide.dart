import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tripu/choose_city_main/choose_city_tour_guide.dart';

import '../categories_main/tour_guide_main.dart';

class TourGuide extends StatelessWidget {
  const TourGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 93,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: ChooseCityTourGuide(),
                      type: PageTransitionType.rightToLeft));
            },
            child: Container(
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
                    )]
                
              ),
              child: Image.asset('assets/tourguide.png'),
                
            ),
          ),
          SizedBox(height: 7,),
          Text("Tour Guide",
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
