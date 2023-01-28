import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:th/Auth/FirebaseAuth.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Login_Signup/ForgetPassword.dart';
import 'package:uuid/uuid.dart';

import 'signup.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key
 
  });
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 6, 13, 217),
            body: ListView(
              children: [
                const SizedBox(
                  height: 50,
                  width: 20,
                ),

                Container(
                  height: 70,
                  width: 197.21,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 40),
                  child: Image.asset(
                    'assets/images/Logowhite.png',
                  ),
                ),

                Container(
                    height: 100,
                    width: 200,
                    alignment: Alignment.center,
                    child: const Text(
                      ' " Unleash your unique style with \n custom-made clothing "',
                      style: TextStyle(
                        color: Color.fromARGB(145, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 8, right: 55, left: 55),
                  child: TextField(
                    textInputAction: TextInputAction.go,
                    // keyboardType: TextInputType.number,
                    controller: nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "name@gmail.com",
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(56, 255, 255, 255),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      suffixIcon: nameController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                nameController.clear();
                              },
                            ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 8, right: 55, left: 55),
                  child: TextField(
                    textInputAction: TextInputAction.go,
                    // keyboardType: TextInputType.number,
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),

                      labelText: "Password",

                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Enter Your Password",

                      hintStyle: const TextStyle(
                          color: Color.fromARGB(56, 255, 255, 255),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                      // icon: Icon(Icons.mail),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: passwordController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                passwordController.clear();
                              },
                            ),
                    ),
                  ),
                ),

                //
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 0, right: 120, left: 120),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        fixedSize: Size(130, 60),
                        textStyle: TextStyle(fontSize: 14),
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: Color.fromARGB(255, 150, 150, 150)),
                    // onPressed: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => const Homepage()));
                    // }
                    onPressed: () async {
                      

                      final message = await AuthService().login(
                        email: nameController.text,
                        password: passwordController.text,
                      );
                      if (message!.contains('Success')) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Homepage(
                              
                            ),
                          ),
                        );
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                  ),
                ),

                TextButton(
                  child: const Text(
                    'Sign Up!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,

                      // decoration: TextDecoration,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                    //signup screen
                  },
                ),
                TextButton(
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassWordPage()));
                    // Navigator.push(
                    //   context,MaterialPageRoute(builder: (context) => ForgetPassowrdPage()
                    //   )
                    //   );
                  },
                ),
              ],
            )));
  }
}
