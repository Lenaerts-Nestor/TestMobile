// ignore_for_file: prefer_const_constructors, library_prefixes

import 'package:flutter/material.dart';
import '../../components/textfield.dart' as textfield_style;
import '../../components/button.dart' as customButton_style;
import 'register.dart' as register_page;
import '../map_section/map_main.dart' as map_page;
import 'package:google_fonts/google_fonts.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  State<LoginMain> createState() => _LoginState();
}

class _LoginState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Color(0xff1D3461),
                Color(0xffFBF7F4),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 100),
              SizedBox(
                child: Center(
                  child: Text(
                    'LOGIN LOGO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0,
                      0), // Modify the padding to include the height of the Text widget
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 635,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 20, 30, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Log In',
                                    style: GoogleFonts.poppins(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[700]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Email",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromRGBO(141, 141, 141, 1),
                                    ),
                                  ),
                                  textfield_style.CustomTextField(
                                    labelText: 'Parflow@gmail.com',
                                    desiredPreIcon:
                                        const Icon(Icons.mail_outline),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Password",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Color.fromRGBO(141, 141, 141, 1),
                                    ),
                                  ),
                                  textfield_style.CustomTextField(
                                    labelText: '',
                                    hintText: '********************',
                                    desiredPreIcon: const Icon(Icons.lock),
                                    obscureText: true,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  customButton_style.CustomButton(
                                    buttonText: 'Login',
                                    buttonWidth: double.infinity,
                                    buttonMargin: const EdgeInsets.fromLTRB(
                                        15, 20, 30, 20),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                map_page.MapMain()),
                                      );
                                    },
                                  ),
                                  // const SizedBox(
                                  //   height: 1,
                                  // ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Don't have an account?",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  141, 141, 141, 1)),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        register_page
                                                            .RegisterMain()),
                                              );
                                            },
                                            child: Text(
                                              'Sign Up',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.lightBlue),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
