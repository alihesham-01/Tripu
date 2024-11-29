import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'login_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Lottie.asset("assets/GetStarted.json",
                  height: 350, width: 300)),
          SizedBox(
            height: 50,
          ),
          Text(
            "Welcome to ",
            style: GoogleFonts.rubik(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/Logo.png",
            height: 110,
            width: 150,
          ),
          SizedBox(
            height: 81,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
                height: 54,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Color.fromRGBO(74, 163, 182, 1)),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
