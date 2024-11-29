import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Cars_component/bmw.dart';
import '../Cars_component/golf.dart';
import '../Cars_component/honda.dart';
import '../Cars_component/kia.dart';
import '../Cars_component/merceds.dart';
import '../cars_component/mitsubishi.dart';

class Cars extends StatelessWidget {
  const Cars({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
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
                SizedBox(
                  height: 20,
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
                            "Tarh-elbahr-street",
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
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  "Find the",
                  style: GoogleFonts.urbanist(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "perfect car to rent",
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
                    hintText: "Search for a car",
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
                      Bmw(),
                      SizedBox(width: 20),
                      Merceds(),
                      SizedBox(width: 20),
                      Mitsubishi(),
                      SizedBox(width: 20),
                      Golf(),
                      SizedBox(width: 20,),
                      Kia(),
                      SizedBox(width: 20,),
                      Honda(),
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
                            "assets/035c6d9e39fe11852356f5d9d39bb015.png",
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
                            "assets/asss.png",
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
                            "assets/omarrr.png",
                            width: 320,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 7,),
      
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          // Adjust the radius as needed
                          child: Image.asset(
                            "assets/omarrrrrrr.webp",
                            width: 330,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 7,),
      
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          // Adjust the radius as needed
                          child: Image.asset(
                            "assets/car.png",
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
                            "assets/R.png",
                            width: 277,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 44),
                Row(
                  children: [
                    Text(
                      "Most Rented Cars",
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
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              // Adjust the radius as needed
                              child: Image.asset(
                                "assets/s.png",
                                width: 350,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BMW",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "sport car",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                              ],
                            ),
      
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$120',
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
                                Icon(Icons.star,color: Colors.amber,size: 15,)
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
                                  "assets/ss.jpg",
                                  width: 350,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BMW",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  Text(
                                    "COPEH",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
      
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$120',
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
                                  Icon(Icons.star,color: Colors.amber,size: 15,)
      
                                ],
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height: 7,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              // Adjust the radius as needed
                              child: Image.asset(
                                "assets/dddd.jpg",
                                width: 350,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Audi",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "audi a3",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$90',
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
                                Icon(Icons.star,color: Colors.amber,size: 15,)
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              // Adjust the radius as needed
                              child: Image.asset(
                                "assets/ds.png",
                                width: 350,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "RolseRoise",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "limo miami",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$330',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                                Icon(Icons.star,color: Colors.amber,size: 15,)
      
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 33,),
      
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}