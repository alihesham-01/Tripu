import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NothingSaved extends StatefulWidget {
  const NothingSaved({super.key});

  @override
  State<NothingSaved> createState() => _NothingSavedState();
}

class _NothingSavedState extends State<NothingSaved> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Nothing Saved",
                style:
                    GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Lottie.asset("assets/empty.json")
          ],
        ),
      ),
    );
  }
}
