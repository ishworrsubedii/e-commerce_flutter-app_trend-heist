// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:th/Cartpage.dart';
import 'package:th/Login_Signup/signup.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Product/Sweatshirt101.dart';
import 'package:th/Product/Velvet_Hoodie101.dart';
import 'package:th/Profile/Profile.dart';
import 'package:th/Wishlist.dart';

import '../Product/Fleece_Hoodie102.dart';
import '../Product/Tshirt101.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 6, 13, 217),
              child: SizedBox(
                height: 30,
                width: 30,

                // color: Color.fromARGB(255, 255, 255, 255),
                child: Image.asset(
                  'assets/images/shopping-bag.png',
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
                // Add item event handler
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 10,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/images/home_2.png'),
                          ),
                          // const Icon(Icons.dashboard,
                          //     color: Color.fromARGB(255, 6, 13, 217) // : Colors.grey,
                          //     ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 10,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishlistPage()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/images/wishlist_1.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    MaterialButton(
                      minWidth: 10,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicyPage()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/images/privacy_1.png'),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/images/user_1.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // return MaterialApp(

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
                  onTap: () {},
                  child: Container(
                      height: 20,
                      width: 15,
                      alignment: Alignment.center,

                      // padding: const EdgeInsets.only(right: 60),
                      child: Image.asset('assets/images/homepage.png')),
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
                SizedBox(
                  width: 80,
                ),
                // SizedBox(
                //   width: 300,
                // ),

                IconButton(
                  // alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(right: 0),

                  icon: const Icon(Icons.search),
                  tooltip: 'Search Icon',
                  color: Colors.black,
                  onPressed: () {},
                ), //IconButton
              ],
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
            backgroundColor: Color.fromARGB(255, 243, 243, 255),
            body: ListView(children: [
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 64,
                    width: 104,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Hoodie',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 11),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onLongPress: () {},
                  child: Container(
                    height: 64,
                    width: 104,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'T-shirt',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),

// ************************************||||||***********************************************
                const SizedBox(
                  width: 20,
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 64,
                    width: 104,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('Sweatshirt',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 11)),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 5, left: 30),
                child: const Text(
                  'Our Product',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                // height: 30,
                // color: Colors.black,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Velvethoodie()));
                  },
                  child: Container(
                    // child: SingleChildScrollView(

                    alignment: Alignment.topLeft,
                    height: 207,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 5,
                            child: Image.asset(
                                'assets/images/product/white_hoodie.png'),
                          ),
                          Container(
                            // width: 80,
                            alignment: Alignment.center,
                            child: Text(
                              'Velvet Hoodie',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'RS 3000',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 6, 13, 217),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Flexible(
                              flex: 0,
                              child: Image.asset('assets/images/star.png'))

                          // ),
                        ],
                      ),
                    ),

                    // children: <Widget>[
                    //   Expanded(
                    //     child: Image.asset('assets/images/product/black_hoodie.png'),
                    //   ),
                    //   Expanded(
                    //     child: Text(
                    //       'Velvet Hoodie',
                    //       style: TextStyle(
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w900,
                    //           fontSize: 10),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ),
                    // ],
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Fleecehoodie101()));
                    },
                    child: Container(
                      // padding: EdgeInsets.only(left: 20, right: 10),
                      height: 207,
                      width: 151,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 5,
                              child: Image.asset(
                                  'assets/images/product/black_hoodie.png'),
                            ),
                            Container(
                              // width: 80,
                              alignment: Alignment.center,
                              child: Text(
                                'Fleece Hoodie',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'RS 2500',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 6, 13, 217),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Flexible(
                                flex: 0,
                                child: Image.asset('assets/images/star.png'))

                            // ),
                          ],
                        ),
                      ),
                    ))
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tshirt101()));
                  },
                  child: Container(
                    // child: SingleChildScrollView(

                    alignment: Alignment.topLeft,
                    height: 207,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 5,
                            child: Image.asset(
                                'assets/images/product/white_tshirt.png'),
                          ),
                          Container(
                            // width: 80,
                            alignment: Alignment.center,
                            child: Text(
                              'T-shirt',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'RS 1200',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 6, 13, 217),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Flexible(
                              flex: 0,
                              child: Image.asset('assets/images/star.png'))

                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sweatshirt101()));
                    },
                    child: Container(
                      // padding: EdgeInsets.only(left: 20, right: 10),
                      height: 207,
                      width: 151,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 5,
                              child: Image.asset(
                                  'assets/images/product/white_sweatshirt.png'),
                            ),
                            Container(
                              // width: 80,
                              alignment: Alignment.center,
                              child: Text(
                                'Sweatshirt',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'RS 1600',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 6, 13, 217),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Flexible(
                                flex: 0,
                                child: Image.asset('assets/images/star.png'))

                            // ),
                          ],
                        ),
                      ),
                    ))
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // child: SingleChildScrollView(

                    alignment: Alignment.topLeft,
                    height: 207,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 5,
                            child: Image.asset(
                                'assets/images/product/white_sweatshirt_th.png'),
                          ),
                          Container(
                            // width: 80,
                            alignment: Alignment.center,
                            child: Text(
                              'Branded Sweatshirt',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'RS 1900',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 6, 13, 217),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Flexible(
                              flex: 0,
                              child: Image.asset('assets/images/star.png'))

                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      // padding: EdgeInsets.only(left: 20, right: 10),
                      height: 207,
                      width: 151,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 5,
                              child: Image.asset(
                                  'assets/images/product/black_ss_hoodie.png'),
                            ),
                            Container(
                              // width: 80,
                              alignment: Alignment.center,
                              child: Text(
                                'Plain Hoodie',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'RS 2200',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 6, 13, 217),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Flexible(
                                flex: 0,
                                child: Image.asset('assets/images/star.png'))

                            // ),
                          ],
                        ),
                      ),
                    ))
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // child: SingleChildScrollView(

                    alignment: Alignment.topLeft,
                    height: 207,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 5,
                            child: Image.asset(
                                'assets/images/product/white_th.png'),
                          ),
                          Container(
                            // width: 80,
                            alignment: Alignment.center,
                            child: Text(
                              'Th Printed Hoodie',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'RS 1600',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 6, 13, 217),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Flexible(
                              flex: 0,
                              child: Image.asset('assets/images/star.png'))

                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      // padding: EdgeInsets.only(left: 20, right: 10),
                      height: 207,
                      width: 151,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 5,
                              child: Image.asset(
                                  'assets/images/product/black_th_hoodie.png'),
                            ),
                            Container(
                              // width: 80,
                              alignment: Alignment.center,
                              child: Text(
                                'TH Printed Hoodie',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'RS 3000',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 6, 13, 217),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Flexible(
                                flex: 0,
                                child: Image.asset('assets/images/star.png'))

                            // ),
                          ],
                        ),
                      ),
                    ))
              ]),
            ])));
  }
}
