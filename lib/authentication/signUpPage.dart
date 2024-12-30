import 'loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset("assets/images/loginPageImage.png"),
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
                    "       create an account to continue",
                    style: GoogleFonts.ptSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "First Name",
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
                  height: 10,
                ),
                TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    // suffixIcon: const Icon(Icons.person),
                    hintText: "Last Name",
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
                  height: 10,
                ),
                TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    // suffixIcon: const Icon(Icons.person),
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
                  height: 10,
                ),
                TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    // suffixIcon: const Icon(Icons.person),
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
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    // suffixIcon: const Icon(Icons.person),
                    hintText: " Confirm Password",
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
                  height: 14,
                ),
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(75, 162, 106, 1)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                      },
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
      ),
    );
  }
}
