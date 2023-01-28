import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:th/Auth/FirebaseAuth.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Login_Signup/Login.dart';
import 'package:uuid/uuid.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Signup(),
      ),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({super.key});
  State<Signup> createState() => _SignupPageState();
}

class _SignupPageState extends State<Signup> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color.fromARGB(255, 6, 13, 217),
          body: ListView(
            children: [
              const SizedBox(
                height: 20,
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
                    ' " Unleash your unique style with \ncustom-made clothing "',
                    style: TextStyle(
                      color: Color.fromARGB(145, 255, 255, 255),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  )),

              Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 8, right: 55, left: 55),
                child: TextField(
                  textInputAction: TextInputAction.go,
                  // keyboardType: TextInputType.number,
                  controller: fullnameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Enter Your Full Name",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(56, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                    prefixIcon: const Icon(
                      Icons.account_box,
                      color: Colors.white,
                    ),
                    suffixIcon: fullnameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              fullnameController.clear();
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
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),

                    labelText: "Email",

                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Enter Valid Email ",

                    hintStyle: const TextStyle(
                        color: Color.fromARGB(56, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                    // icon: Icon(Icons.mail),
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    suffixIcon: emailController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              emailController.clear();
                            },
                          ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 8, right: 55, left: 55),
                child: TextField(
                  // textInputAction: TextInputAction.go,
                  // keyboardType: TextInputType.number,
                  controller: phoneController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),

                    labelText: "Phone Number",

                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Enter Your Number",

                    hintStyle: const TextStyle(
                        color: Color.fromARGB(56, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                    // icon: Icon(Icons.mail),
                    prefixIcon: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    suffixIcon: phoneController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              phoneController.clear();
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
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),

                    labelText: "Password",

                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Set A Password",

                    hintStyle: const TextStyle(
                        color: Color.fromARGB(56, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
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
                  child: const Text('Create An Account'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: Size(130, 60),
                      textStyle: TextStyle(fontSize: 14),
                      primary: Color.fromARGB(255, 255, 255, 255),
                      onPrimary: Color.fromARGB(255, 150, 150, 150)),
                  onPressed: () async {
                    final message = await AuthService().registration(
                      fullname: fullnameController.text,
                      email: emailController.text,
                      phone: phoneController.text,
                      password: passwordController.text,
                    );

                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Homepage()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    FirebaseFirestore.instance
                        .collection("UserInformationCollection")
                        .get()
                        .then((snapshot) {
                      if (snapshot.docs.isEmpty) {
                        // Collection does not exist, create it
                        // FirebaseFirestore.instance
                        //     .collection("UserInformationCollection")
                        //     .add({});
                      }
                      // Add the new document with user information
                      String UserId = Uuid().v1();
                      FirebaseFirestore.instance
                          .collection("UserInformationCollection")
                          .doc(FirebaseAuth.instance.currentUser!.uid)
                          .set({
                        'UserId': FirebaseAuth.instance.currentUser!.uid,
                        'Username': fullnameController.text,
                        'UserEmail': emailController.text,
                      });
                    }).catchError((error) {
                      print(error);
                    });
                  },
                ),
              ),

              TextButton(
                child: const Text(
                  'Login ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,

                    // decoration: TextDecoration,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  //signup screen
                },
              ),
            ],
          )),
    );
  }
}
