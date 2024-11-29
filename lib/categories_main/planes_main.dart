import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripu/city_plane/cairo_plane.dart';

import '../city_plane/alex_plane.dart';
import '../city_plane/giza_plane.dart';
import '../city_plane/portsaid_plane.dart';

class PlanesMain extends StatefulWidget {
  const PlanesMain({super.key});

  @override
  State<PlanesMain> createState() => _PlanesMainState();
}

class _PlanesMainState extends State<PlanesMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF5F7FF), // Slightly lighter shade at the bottom
                Color(0xB3ECECEC), // Light blue at the top
              ],
            ),
          ),
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap:(){Navigator.pop(context);},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 237, 238, 1),
                          borderRadius: BorderRadius.circular(100)
                      ,boxShadow: [BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.15),
                      )]
                      ),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Color.fromRGBO(13, 25, 29, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.15),
                          )]
                        ),
                        child: Image.asset("assets/profile.png",height: 60,width: 60,)),
                    SizedBox(width: 7,),
                    Text("Hi, username !",
                    style: GoogleFonts.prompt(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 6,
                        color: Colors.white70.withOpacity(0.9),
                      ),
                    ],
                    ),
                    )
                  ],
                ),
                SizedBox(height: 35,),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 6,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/airplane.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity, // Ensures the image covers the container
                        ),
                      ),
                      Positioned(
                        bottom: 20, // Position the text
                        left: 20,   // Adjust horizontal alignment
                        child: Text(
                          "Discover the World",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, // Text color
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 2),
                                blurRadius: 6,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Text("Explore Destination",
                  
                style: GoogleFonts.prompt(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PortSaidPlane(),
                      SizedBox(width: 16,),
                      GizaPlane(),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CairoPlane(),
                      SizedBox(width: 16,),
                      AlexPlane(),
                    ],
                  ),
                ),
                  
                  
              ],
            ),
          ),
        )
        ),
        ),
      
      ),
    );
  }
}
