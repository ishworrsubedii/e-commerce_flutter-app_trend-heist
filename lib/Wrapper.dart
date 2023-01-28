import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:th/Auth/FirebaseAuth.dart';
import 'package:th/Checkout/Summarybackend.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Login_Signup/Login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthService().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Homepage();
          } else {
            return LoginPage();
          }
        });
  }
}
