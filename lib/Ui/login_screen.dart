import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripu/Ui/categories_screen.dart';
import 'package:tripu/Ui/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 59,
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 58.0),
                    child: Image.asset("assets/Logo.png", height: 80, width: 150),
                  )
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Text("Hey,",
                  style: GoogleFonts.rubik(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1))),
              Text("Welcome Back",
                  style: GoogleFonts.rubik(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 143, 161, 1.0))),
              SizedBox(
                height: 58,
              ),
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
                    Icons.email_outlined,
                    color: Color.fromRGBO(26, 23, 23, .37),
                  ),
                ),
                hintText: "Enter your email",
                hintStyle: GoogleFonts.inter(
                    fontSize: 14, color: Color.fromRGBO(26, 23, 23, .67)),
              )),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                  obscureText: true,
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
                        Icons.lock_outline_rounded,
                        color: Color.fromRGBO(26, 23, 23, .37),
                      ),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,
                        color: Color.fromRGBO(26, 23, 23, .37)),
                    hintText: "Enter your password",
                    hintStyle: GoogleFonts.inter(
                        fontSize: 14, color: Color.fromRGBO(26, 23, 23, .67)),
                  )),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(57, 143, 161, 1.0)),
                      ))
                ],
              ),
              SizedBox(
                height: 110,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoriesScreen()));
                },
                child: Center(
                  child: Container(
                      height: 55,
                      width: 343,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Color.fromRGBO(74, 163, 182, 1)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  "or Continue with",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Color.fromRGBO(26, 23, 23, .67),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons8-facebook-30.png")),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons8-apple-logo-30.png")),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons8-google-logo-30.png")),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      color: Color.fromRGBO(158, 158, 158, 1),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text("Sign-Up",
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(57, 143, 161, 1.0),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
