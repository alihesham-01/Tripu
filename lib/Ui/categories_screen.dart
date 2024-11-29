import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tripu/categories_main/tour_guide_main.dart';
import 'package:tripu/categories_widgets/hotels_category.dart';
import '../bottom_nav_bar/profile_nav_bar.dart';
import '../bottom_nav_bar/saved_nav_bar.dart';
import '../categories_widgets/car.dart';
import '../categories_widgets/food_category.dart';
import '../categories_widgets/planes.dart';
import '../categories_widgets/tour_guide.dart';
import '../cities_widgets/Giza.dart';
import '../cities_widgets/alexandria.dart';
import '../cities_widgets/cairo.dart';
import '../cities_widgets/port_said.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(16), // Adds spacing around the nav bar
          decoration: BoxDecoration(
            color: Color(0xFF0E073C), // Dark blue color
            borderRadius: BorderRadius.circular(50), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person_outline, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: ProfileNavBar(),
                          type: PageTransitionType.size,
                          alignment: Alignment.topCenter,
                          childCurrent: ProfileNavBar()));
                },
              ),
              IconButton(
                icon: Icon(Icons.explore_outlined, color: Colors.white),
                onPressed: () {
                  // Handle Explore button press
                },
              ),
              IconButton(
                icon: Icon(Icons.bookmark_outline, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Saved(),
                          type: PageTransitionType.size,
                          alignment: Alignment.topCenter,
                          childCurrent: Saved()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 11,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Where do",
                            style: GoogleFonts.inter(fontSize: 25),
                          ),
                          Text(
                            "you want to go?",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        "assets/Logo.png",
                        height: 80,
                        width: 80,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  fillColor: Color.fromRGBO(236, 236, 236, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Discover city",
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
                SizedBox(
                  height: 66,
                ),
                Text(
                  "Explore Cities",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        "All",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, .5),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Popular",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, .5),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Recommended",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, .5),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Most Viewed",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, .5),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Most Visited",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, .5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PortSaid(),
                      SizedBox(
                        width: 9,
                      ),
                      Giza(),
                      SizedBox(
                        width: 9,
                      ),
                      Cairo(),
                      SizedBox(
                        width: 9,
                      ),
                      Alexandria(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 56,
                ),
                Text(
                  "Categories",
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 34),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Planes(),
                      SizedBox(
                        width: 20,
                      ),
                      HotelsCategory(),
                      SizedBox(
                        width: 20,
                      ),
                      CarCategory(),
                      SizedBox(
                        width: 20,
                      ),
                      TourGuide(),
                      SizedBox(
                        width: 20,
                      ),
                      FoodCategory(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
