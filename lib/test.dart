import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Hotels_content/apart.dart';
import '../Hotels_content/cont.dart';
import '../Hotels_content/mansion.dart';
import '../Hotels_content/motel.dart';


class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 55,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 212,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "211B Baker Street",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                      ),
                    ),
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Discover your",
                style: GoogleFonts.urbanist(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
              Text(
                "perfect place to stay",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(236, 236, 236, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefix: Icon(Icons.search),
                  hintText: "Search hotel",
                  hintStyle: GoogleFonts.urbanist(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  suffixIcon: Icon(Icons.filter_list_sharp),
                ),
              ),
              SizedBox(height: 45),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Cont(),
                    SizedBox(width: 20),
                    Apart(),
                    SizedBox(width: 20),
                    Mansion(),
                    SizedBox(width: 20),
                    Motel(),
                  ],
                ),
              ),
              SizedBox(height: 17),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/7210_11871_286827.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover, // Ensure the image scales properly
                      ),
                    ),
                    SizedBox(width: 7,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/ddddddd.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 7,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/asfff.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 7,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/aaass.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 7,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/fffgg.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 44),
              Row(
                children: [
                  Text(
                    "Hotels Nearby",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Show all",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/aaass.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shangrilla Hotel",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "211B Baker Street",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$300',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                        ),
                        Image.asset("icons8-star-10.png"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Ensure Image is properly sized
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // Adjust the radius as needed
                      child: Image.asset(
                        "assets/fffgg.jpg",
                        width: 277,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stones Hotel",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "122 Sadat Street",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$900',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                        ),
                        Image.asset("icons8-star-10.png"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 33,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 83,
                        width: 430,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.home),
                            Spacer(),
                            Icon(Icons.access_time_filled_outlined),
                            Spacer(),
                            Icon(Icons.map_outlined),
                            Spacer(),
                            Icon(Icons.person),

                          ],
                        )


                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
