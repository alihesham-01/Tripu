import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripu/choose_city/choose_portsaid.dart';

import '../choose_city/choose_alex.dart';
import '../choose_city/choose_cairo.dart';
import '../choose_city/choose_giza.dart';

class ChooseCityTourGuide extends StatefulWidget {
  const ChooseCityTourGuide({super.key});

  @override
  _ChooseCityTourGuideState createState() => _ChooseCityTourGuideState();
}

class _ChooseCityTourGuideState extends State<ChooseCityTourGuide> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
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
                    SizedBox(width: 30,),
                    Text("Choose your destination",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
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
                ChoosePortsaid(),
                ChooseGiza(),
                ChooseCairo(),
                ChooseAlex(),
              ],
            ),
          ),
        )
      ),
    );
  }
}
