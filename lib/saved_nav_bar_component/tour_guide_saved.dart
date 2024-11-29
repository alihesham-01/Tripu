import 'package:flutter/material.dart';
import 'package:tripu/bottom_nav_bar/saved_nav_bar.dart';

import '../nothing_saved.dart';

class TourGuideSaved extends StatefulWidget {
  const TourGuideSaved({super.key});

  @override
  State<TourGuideSaved> createState() => _ChooseAlexState();
}

class _ChooseAlexState extends State<TourGuideSaved> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30),
        InkWell(
          onTap: () {
            setState(() {
              isTapped = !isTapped; // Toggle state on tap
            });

            // Wait for the animation to complete before navigating
            Future.delayed(Duration(milliseconds: 900), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NothingSaved()),
              );
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 900),
              // Animation duration
              curve: Curves.easeOutCirc,
              // Animation curve
              width: isTapped ? 386 : 500,
              // Change width on tap
              height: isTapped ? 473 : 300,
              // Change height on tap
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(isTapped ? 15 : 50),
                // Border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isTapped ? 15 : 50),
                // Match the border radius
                child: Stack(
                  children: [
                    // Image as the background
                    Image.asset(
                      "assets/omar5.jpg",
                      fit: BoxFit.cover, // Ensures the image fills the container
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    // Positioned text on top of the image
                    Positioned(
                      bottom: 20,  // Position the text at the bottom of the container
                      left: 20,    // Adjust left margin
                      child: Text(
                        'TourGuideSaved',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: (isTapped? Colors.white  : Colors.white70),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}