import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../Ui/categories_screen.dart';

class ProfileNavBar extends StatefulWidget {
  const ProfileNavBar({super.key});

  @override
  State<ProfileNavBar> createState() => _ProfileNavBarState();
}

class _ProfileNavBarState extends State<ProfileNavBar> {
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
                onPressed: () {
                  Navigator.push(context,
                      PageTransition(
                          child: CategoriesScreen(),
                  childCurrent: CategoriesScreen(),
                  type: PageTransitionType.size,
                  alignment: Alignment.topCenter,));
                },
              ),
              IconButton(
                icon: Icon(Icons.person_outline, color: Colors.white),
                onPressed: () {}
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
                  // Handle Bookmark button press
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(230, 230, 230, 1),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  "Profile",
                  style: GoogleFonts.inter(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(14, 15, 244, .6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          blurRadius: 7, // Spread of the shadow (makes it soft)
                          offset: Offset(0, 10), // Position of the shadow),]
                        )
                      ]),
                  child: Row(
                    children: [
                      Image.asset("assets/profile.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User Name",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                          Text(
                            "example@email.com",
                            style: GoogleFonts.inter(
                                fontSize: 15, color: Colors.white70),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          blurRadius: 7, // Spread of the shadow (makes it soft)
                          offset: Offset(0, 10), // Position of the shadow),]
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.person_2_outlined,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("My Account ",
            
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),
                                  Text("Make changes to your account",
            
                                    style: GoogleFonts.inter(
                                      fontSize: 13,
                                        color: Color.fromRGBO(0, 0, 0, .4)
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                              color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.security_update_good_outlined,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Two-Factor Authentication",
            
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text("Further secure your account for safety",
            
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Color.fromRGBO(0, 0, 0, .4)
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.lock_outline_rounded,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Face ID / Touch ID",
            
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text("Manage your device security",
            
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Color.fromRGBO(0, 0, 0, .4)
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.logout_outlined,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Log out",
            
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text("Further secure your account for safety",
            
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Color.fromRGBO(0, 0, 0, .4)
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("More",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          blurRadius: 7, // Spread of the shadow (makes it soft)
                          offset: Offset(0, 10), // Position of the shadow),]
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.support_agent_outlined,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Text("Help & Support ",

                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(237, 231, 255, .81),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70.withOpacity(0.2),
                                          // Shadow color
                                          blurRadius: .1,
                                          // Spread of the shadow (makes it soft)
                                          offset: Offset(
                                              0, 0), // Position of the shadow),]
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.notifications_active_outlined,
                                    color: Color.fromRGBO(14, 15, 244, .6),
                                  )),
                              SizedBox(width: 10,),
                              Text("About App",

                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, .3),)
                            ],
                          ),
                        ),

                      ],
                    ),
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
