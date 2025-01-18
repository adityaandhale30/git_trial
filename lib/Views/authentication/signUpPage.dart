import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

import 'loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? errorMessage;

  /// Signs up a new user with the provided email, password, first name, and last name.
  ///
  /// Throws a [FirebaseAuthException] if the sign-up process fails.
  void _signUp(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final String userID = userCredential.user!.uid;
      final TimeOfDay timestamp = TimeOfDay.now();
      final Map<String, dynamic> data = {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'timestamp': timestamp.toString(),
      };

      await FirebaseFirestore.instance
          .collection("UniApp")
          .doc("UsersData")
          .collection(userID)
          .add(data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        setState(() {
          errorMessage = 'The password provided is too weak.';
        });
      } else if (e.code == 'email-already-in-use') {
        setState(() {
          errorMessage = 'The account already exists for that email.';
        });
      } else {
        setState(() {
          errorMessage = 'An error occurred: ${e.message}';
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'An unknown error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 0),
              Image.asset("assets/splash.png"),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "Sign Up ",
                  style: GoogleFonts.ptSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "create an account to continue...",
                  style: GoogleFonts.ptSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // First name text field
                    CustomTextField(
                      controller: firstNameController,
                      icon: Icons.person,
                      hintText: "First Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Last name text field
                    CustomTextField(
                      controller: lastNameController,
                      icon: Icons.person,
                      hintText: "Last Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Email text field
                    CustomTextField(
                      controller: emailController,
                      icon: Icons.email,
                      hintText: "Email",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Password text field
                    CustomTextField(
                      controller: passwordController,
                      icon: Icons.lock,
                      obscureText: true,
                      hintText: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Confirm password text field
                    CustomTextField(
                      controller: confirmPasswordController,
                      icon: Icons.lock,
                      obscureText: true,
                      hintText: "Confirm Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        } else if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 14),

                    // Error message
                    if (errorMessage != null)
                      Text(
                        errorMessage!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    const SizedBox(height: 10),

                    // Sign up button
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _signUp(
                            emailController.text,
                            passwordController.text,
                            firstNameController.text,
                            lastNameController.text,
                          );
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(75, 162, 106, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up ",
                            style: GoogleFonts.ptSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 242,
                  height: 20,
                  //color: Colors.amber,
                  child: Row(
                    children: [
                      Text(
                        "Already have an account?",
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
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                        child: Text(
                          "Log in",
                          style: GoogleFonts.alatsi(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(75, 162, 106, 1),
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextField({
    this.controller,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(117, 115, 115, 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 139, 148, 1),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.purpleAccent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      validator: validator,
    );
  }
}
