// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:th/Checkout/CheckoutPage3.dart';
import 'package:th/Checkout/Checkoutpage2.dart';
import 'package:th/Checkout/Checkoutpage_1.dart';
import 'package:th/Checkout/Summary.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Login_Signup/Login.dart';
import 'package:th/Login_Signup/signup.dart';
import 'package:th/Product/Fleece_Hoodie102.dart';
import 'package:th/Product/Velvet_Hoodie101.dart';
import 'package:th/Profile/Profile.dart';
import 'package:th/Wrapper.dart';

import 'Auth/FirebaseAuth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Wrapper(
      ),
    );
  }
}
