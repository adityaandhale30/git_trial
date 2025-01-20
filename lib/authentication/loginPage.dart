//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:git_trial/bottomnavigationbar_custom.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Views/homescreen/home_screen.dart';
import 'signUpPage.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Center(child: Image.asset("assets/splash.png")),
                  const SizedBox(height: 20),
                  Text(
                    "Log In",
                    style: GoogleFonts.ptSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "please sign in to continue",
                    style: GoogleFonts.ptSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextField(
                          //controller: nameController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(117, 115, 115, 1),
                            ),

                            ///WHEN WE CLICK ON TEXTFIELD IT WILL SHOW FOUSEDBORDER
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),

                            ///USED WHEN WE HAVE TO GIVE BORDER TO TEXTFIELD
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.purpleAccent,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        TextField(
                          //controller: nameController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon:
                                const Icon(Icons.remove_red_eye_outlined),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(117, 115, 115, 1),
                            ),

                            ///WHEN WE CLICK ON TEXTFIELD IT WILL SHOW FOUSEDBORDER
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),

                            ///USED WHEN WE HAVE TO GIVE BORDER TO TEXTFIELD
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.purpleAccent,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgat Password",
                        style: GoogleFonts.ptSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(41, 166, 215, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const BottomnavigationbarCustom()));
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(41, 166, 215, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: GoogleFonts.ptSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 300,
                      height: 40,
                      //color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: GoogleFonts.alatsi(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                            },
                            child: Text(
                              "sign up",
                              style: GoogleFonts.alatsi(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 166, 215, 1),
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
