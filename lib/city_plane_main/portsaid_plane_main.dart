import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortsaidPlaneMain extends StatefulWidget {
  const PortsaidPlaneMain({super.key});

  @override
  State<PortsaidPlaneMain> createState() => _PortsaidPlaneMainState();
}

class _PortsaidPlaneMainState extends State<PortsaidPlaneMain> {
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(233, 237, 238, 1),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                    color: Colors.black.withOpacity(0.15),
                                  )
                                ]),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Color.fromRGBO(13, 25, 29, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        "Book Your Flight",
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: Color.fromRGBO(226, 226, 226, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            blurRadius: 3, // Spread of the shadow (makes it soft)
                            offset: Offset(0, 0), // Position of the shadow),]
                          )
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/portsaid1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 129,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF7ABEEB),
                                // Slightly lighter shade at the bottom
                                Color(0xFF3E75D6),
                                // Light blue at the top
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(
                                Icons.autorenew_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                "Round Trip",
                                style: GoogleFonts.prompt(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 129,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFDFDFD),
                                // Slightly lighter shade at the bottom
                                Color(0xFFA7C3F1),
                                // Light blue at the top
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(
                                Icons.threesixty_outlined,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                "Multi City",
                                style: GoogleFonts.prompt(
                                    color: Color.fromRGBO(0, 0, 0, .4),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 129,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFDFDFD),
                                // Slightly lighter shade at the bottom
                                Color(0xFFA7C3F1),
                                // Light blue at the top
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                "One Way",
                                style: GoogleFonts.prompt(
                                    color: Color.fromRGBO(0, 0, 0, .4),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 470,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.15),
                          )
                        ],
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFE6F6FF),
                          // Slightly lighter shade at the bottom
                          Color(0xFFD0E1FA),
                          // Light blue at the top
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Location",
                          style: GoogleFonts.prompt(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(138, 141, 147, .08),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(128),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 28.0, right: 14.0),
                                  child: Icon(
                                    Icons.airplanemode_on_outlined,
                                    color: Color.fromRGBO(26, 23, 23, .37),
                                  ),
                                ),
                                hintText: "Portsaid, Egypt",
                                hintStyle: GoogleFonts.inter(
                                    fontSize: 14, color: Color.fromRGBO(26, 23, 23, .67)),
                              )),
                          SizedBox(height: 10,),
                          Text("Airport",
                            style: GoogleFonts.prompt(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(138, 141, 147, .08),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(128),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 28.0, right: 14.0),
                                  child: Icon(
                                    Icons.place_outlined,
                                    color: Color.fromRGBO(26, 23, 23, .37),
                                  ),
                                ),
                                hintText: "International Airport ,Egypt",
                                hintStyle: GoogleFonts.inter(
                                    fontSize: 14, color: Color.fromRGBO(26, 23, 23, .67)),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                      Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Departure Column
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Departure",
                                    style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFE3EFFF),
                                          Color(0xFFDDE6FF),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Dec 16th, 2022",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Spacer
                              SizedBox(width: 20),
                              // Return Column
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Return",
                                    style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFE3EFFF),
                                          Color(0xFFDDE6FF),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Jan 6th, 2023",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Passengers",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(138, 141, 147, .08),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(128),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 28.0, right: 14.0),
                                  child: Icon(
                                    Icons.place_outlined,
                                    color: Color.fromRGBO(26, 23, 23, .37),
                                  ),
                                ),
                                hintText: "1 passenger",
                                hintStyle: GoogleFonts.inter(
                                    fontSize: 14, color: Color.fromRGBO(26, 23, 23, .67)),
                              )),
                          SizedBox(height: 22,),
                          Center(
                            child: Container(
                              width: 150,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF7ABEEB),
                                    // Slightly lighter shade at the bottom
                                    Color(0xFF3E75D6),
                                    // Light blue at the top
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(children: [
                                  Icon(
                                    Icons.search_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Search Flights",
                                    style: GoogleFonts.prompt(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



