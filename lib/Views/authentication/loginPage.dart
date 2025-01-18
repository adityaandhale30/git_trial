//import 'dart:ui';

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:git_trial/Views/authentication/signUpPage.dart';
import 'package:git_trial/Views/bottomnavigationbar_custom.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homescreen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isVisibility = true;
  final _formKey = GlobalKey<FormState>();

  /// Signs in a user with the provided email and password.
  ///
  /// Displays an error message using the `ScaffoldMessenger` if the sign-in fails.
  Future<void> _signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided for that user.';
          break;
        default:
          errorMessage = 'An error occurred: ${e.message}';
          break;
      }
      log(errorMessage);
    }
  }

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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
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
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null && value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  _isVisibility = !_isVisibility;
                                },
                                child: Icon(_isVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                              ),
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
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
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
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        _signIn(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      }
                    },
                    child: Container(
                      height: 40,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
