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
                      width: 240,
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
                            "Mohamed ali, Portsaid",
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
                         "assets/rrr.jpg",
                         width: 197,
                         height: 150,
                         fit: BoxFit.cover,
                       ),
                     ),
                     SizedBox(width: 15,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Palma Hotel",
                           style: TextStyle(
                             fontWeight: FontWeight.w800,
                             fontSize: 16,
                             color: Color.fromRGBO(0, 0, 0, 1),
                           ),
                         ),
                         Text(
                           "Tarh Elbahr Street",
                           style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w500,
                             color: Color.fromRGBO(0, 0, 0, 0.5),
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 20,),
                     Column(
                       children: [
                         Text("4.5"),
                         Icon(Icons.star_rate,color: Colors.yellow,)
                       ],
                     )
                   ],
                 ),
               ),
                SizedBox(height: 33,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    // Adjust the radius as needed
                    child: Image.asset(
                      "assets/rr.jpg",
                      width: 197,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aracan Hotel",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Text(
                        "Tarh Elbahr Street",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text("4.9"),
                      Icon(Icons.star_rate,color: Colors.yellow,)
                    ],
                  )
                ],
              ),
            ),
                SizedBox(height: 25,),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
