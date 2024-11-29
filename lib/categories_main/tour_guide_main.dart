import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripu/tour_guides/italy.dart';

import '../tour_guides/arabic.dart';
import '../tour_guides/chinese.dart';
import '../tour_guides/english.dart';
import '../tour_guides/spanish.dart';

class TourGuideMain extends StatefulWidget {
  const TourGuideMain({super.key});

  @override
  State<TourGuideMain> createState() => _TourGuideMainState();
}

class _TourGuideMainState extends State<TourGuideMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
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
                  SizedBox(height: 20,),
                  TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(236, 236, 236, 1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search",
                        hintStyle: GoogleFonts.urbanist(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        suffixIcon: Icon(
                          Icons.filter_list_sharp,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      )),
                  SizedBox(height: 30,),
                  EnglishTourGuide(),
                  SizedBox(height: 30,),
                  ItalyTourGuide(),
                  SizedBox(height: 30,),
                  SpanishTourGuide(),
                  SizedBox(height: 30,),
                  ArabicTourGuide(),
                  SizedBox(height: 30,),
                  ChineseTourGuide()

                ],
              ),
            ),
          ),
        )
    );
  }
}
