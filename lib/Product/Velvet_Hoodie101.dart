// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:th/Checkout/Checkoutpage_1.dart';
import 'package:th/Homepage/Homepage.dart';

class Velvethoodie extends StatelessWidget {
  const Velvethoodie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            // Container(
            //   height: 20,
            //   width: 120,
            //   padding: EdgeInsets.only(right: 40),

            //   // alignment: Alignment.,
            //   child: Image.asset('assets/images/Logoblue.png'),
            // ),
            //IconButton
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Container(
                  height: 20,
                  width: 15,
                  alignment: Alignment.center,

                  // padding: const EdgeInsets.only(right: 60),
                  child: Image.asset('assets/images/leftarrow.png')),
            ),
            SizedBox(
              width: 100,
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  height: 10,
                  width: 140,
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Logoblue.png'),
                )),
            // SizedBox(
            //   width: 80,
            // // ),
            SizedBox(
              width: 100,
            ),

            // IconButton(
            InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 20,
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/shopping-bag.png',
                      color: Color.fromARGB(174, 0, 0, 0)),
                )),
            SizedBox(
              width: 15,
            ) //IconButton
          ],
          //
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: VelvetHoodie(),
      ),
    );
  }
}

class VelvetHoodie extends StatefulWidget {
  const VelvetHoodie({super.key});

  @override
  State<VelvetHoodie> createState() => _VelvetHoodieState();
}

class _VelvetHoodieState extends State<VelvetHoodie> {
  String? hoodietitle = 'Velvet Hoodie';
  String? productid = '101_Velvet';
  String? hoodieSize = '';
  String? hoodieColors = '';

  @override
  Widget build(BuildContext context) {
    // var _selectedGender;
    // String brand = '';
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              width: 300.0,
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 243, 248, 255)),
              child: Container(
                  height: 250,
                  width: 300,
                  // color: Colors.black,
                  child: Image.asset(
                    'assets/images/Descriptive_Product/Velvet101_white.png',
                  ))),
          Container(
            height: 10,
            width: 20,
            child: Image.asset(
              'assets/images/star.png',
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Velvet Hoodie',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Rs. 2100',
              style: TextStyle(
                  color: Color.fromARGB(255, 6, 13, 217),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Color',
              style:
                  TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
            ),
          ),
          // SizedBox(
          //   height: 60,
          // ),
          // color: Colors.black,

          Row(children: [
            Container(
              height: 40,
              width: 144,
              // color: Colors.black,
              child: RadioListTile(
                title: Row(
                  children: const <Widget>[
                    // Image.asset(
                    //   "Bajaj.png",
                    //   height: 50,
                    //   width: 50,
                    // ),
                    SizedBox(width: 5),
                    Text("White"),
                  ],
                ),
                value: "White",
                groupValue: hoodieColors,
                activeColor: Color.fromARGB(255, 6, 13, 217),
                // tileColor: t,
                onChanged: (value) {
                  setState(() {
                    hoodieColors = value.toString();
                  });
                },
              ),
            ),
            Container(
              height: 40,
              width: 133,
              // color: Colors.black,
              child: RadioListTile(
                title: Row(
                  children: const <Widget>[
                    // Image.asset(
                    //   "Bajaj.png",
                    //   height: 50,
                    //   width: 50,
                    // ),
                    SizedBox(width: 5),
                    Text("Black"),
                  ],
                ),
                value: "Black",
                groupValue: hoodieColors,
                activeColor: Color.fromARGB(255, 6, 13, 217),
                // tileColor: t,
                onChanged: (value) {
                  setState(() {
                    hoodieColors = value.toString();
                  });
                },
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Container(
            // color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Size',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // SizedBox(
          //   height: 60,
          // ),
          // color: Colors.black,

          Row(
            children: [
              Container(
                height: 50,
                width: 100,
                // color: Colors.black,
                child: RadioListTile(
                  title: Row(
                    children: const <Widget>[
                      // Image.asset(
                      //   "Bajaj.png",
                      //   height: 50,
                      //   width: 50,
                      // ),
                      // SizedBox(width: 5),
                      Text("S"),
                    ],
                  ),
                  value: "Small",
                  groupValue: hoodieSize,
                  activeColor: Color.fromARGB(255, 6, 13, 217),
                  // tileColor: t,
                  onChanged: (value) {
                    setState(() {
                      hoodieSize = value.toString();
                    });
                  },
                ),
              ),
              Container(
                height: 50,
                width: 120,
                // color: Colors.black,
                child: RadioListTile(
                  title: Row(
                    children: const <Widget>[
                      // Image.asset(
                      //   "Bajaj.png",
                      //   height: 50,
                      //   width: 50,
                      // ),
                      // SizedBox(width: 5),
                      Text("M"),
                    ],
                  ),
                  value: "Medium",
                  groupValue: hoodieSize,
                  activeColor: Color.fromARGB(255, 6, 13, 217),
                  // tileColor: t,
                  onChanged: (value) {
                    setState(() {
                      hoodieSize = value.toString();
                    });
                  },
                ),
              ),
              Container(
                height: 50,
                width: 120,
                // color: Colors.black,
                child: RadioListTile(
                  title: Row(
                    children: const <Widget>[
                      // Image.asset(
                      //   "Bajaj.png",
                      //   height: 50,
                      //   width: 50,
                      // ),
                      // SizedBox(width: 5),
                      Text("L"),
                    ],
                  ),
                  value: "Large",
                  groupValue: hoodieSize,
                  activeColor: Color.fromARGB(255, 6, 13, 217),
                  // tileColor: t,
                  onChanged: (value) {
                    setState(() {
                      hoodieSize = value.toString();
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            // color: Colors.black,
            alignment: Alignment.center,
            child: Text(
              'Details',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            child: Text(
              "Light-weight and comfortable to wear.\n              High quality DTF printing.\n        Durable print as long as t-shirt.\n                 No color fade t-shirts.\n   Soft cotton handfeed fabric surface\n     Brushed fleece fabric on the inside\n           High definition printing colors\n                      Double layer hood",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            // color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // color: Colors.pink,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {},
                    child: Container(
                      // color: Colors.white,
                      // alignment: Alignment.topLeft,
                      alignment: Alignment.center,
                      height: 60,
                      width: 157,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(19, 6, 13, 217),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage1(
                                    hoodieTitle: hoodietitle,
                                    productId: productid,
                                    size: hoodieSize,
                                    color: hoodieColors,
                                  )));
                    },
                    child: Container(
                      // color: Colors.white,
                      // alignment: Alignment.topLeft,
                      alignment: Alignment.center,
                      height: 60,
                      width: 157,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 13, 217),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
