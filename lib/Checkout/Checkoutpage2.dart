// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:th/Checkout/CheckoutPage3.dart';
import 'package:th/Checkout/Checkoutpage_1.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Profile.dart';

class CheckoutPage2 extends StatefulWidget {
  CheckoutPage2(
      {super.key,
      required this.hoodieTitle,
      required this.productId,
      required this.size,
      required this.color,
      required this.deliveryType});

  String? productId;
  String? size;
  String? color;
  String? hoodieTitle;
  String? deliveryType;

  @override
  State<CheckoutPage2> createState() => _Checkoutpage();
}

class _Checkoutpage extends State<CheckoutPage2> {
  final TextEditingController StreetController = TextEditingController();
  final TextEditingController CityController = TextEditingController();
  final TextEditingController StateController = TextEditingController();
  final TextEditingController CountryController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
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
            body: ListView(children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 85,
                width: 100,
                // color: Colors.black,
                child: Row(children: [
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: Image.asset(
                        'assets/images/Checkout_image/Process_1.png'),
                  ),
                  Container(
                    height: 2,
                    color: Color.fromARGB(255, 6, 13, 217),
                    width: 100,
                  ),
                  Container(
                    height: 60,
                    width: 40,
                    child: Image.asset(
                        'assets/images/Checkout_image/Process_1.png'),
                  ),
                  Container(
                    height: 2,
                    width: 100,
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 40,
                        child: Image.asset(
                            'assets/images/Checkout_image/Process_2.png'),
                      ),
                    ],
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
                // chi
                // Text('Delivery'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.black,
                      width: 20,
                      height: 30,
                      child:
                          Image.asset('assets/images/Checkout_image/Tick.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      // alignment: Alignment.center,
                      child: Text(
                          'Billing address is the same as delivery address'),
                    ),
                  ]),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Street 1",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(205, 112, 112, 112),
                            fontSize: 14),
                      )),
                  Container(
                    // alignment: Alignment.topRight,
                    // height: 90,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextField(
                        controller: StreetController,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "City ",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(205, 112, 112, 112),
                            fontSize: 14),
                      )),
                  Container(
                    // alignment: Alignment.topRight,
                    // height: 90,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextField(
                        controller: CityController,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "State ",
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(205, 112, 112, 112),
                              fontSize: 14),
                        )),
                    SizedBox(
                      width: 180,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Country ",
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(205, 112, 112, 112),
                              fontSize: 14),
                        )),
                  ]),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextField(
                            controller: StateController,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextField(
                            controller: CountryController,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ),
                      )
                    ],
                    // alignment: Alignment.topRight,
                    // height: 90,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 145,
                    height: 50,
                    child: Container(
                      // padding: const EdgeInsets.only(right: 110, left: 110),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(

                              // fixedSize: Size(131, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              side: BorderSide(
                                  color: Color.fromARGB(88, 0, 0, 0)),
                              textStyle: TextStyle(fontSize: 14),
                              primary: Color.fromARGB(255, 255, 255, 255),
                              onPrimary: Color.fromARGB(255, 150, 150, 150)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Back',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 145,
                    height: 50,
                    child: Container(
                      // padding: const EdgeInsets.only(right: 110, left: 110),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // fixedSize: Size(131, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              textStyle: TextStyle(fontSize: 14),
                              primary: Color.fromARGB(255, 6, 13, 217),
                              onPrimary: Color.fromARGB(255, 150, 150, 150)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckoutPage3(
                                          city: CityController.text,
                                          color: widget.color,
                                          country: CountryController.text,
                                          deliveryType: widget.deliveryType,
                                          hoodieTitle: widget.hoodieTitle,
                                          productId: widget.productId,
                                          size: widget.size,
                                          state: StateController.text,
                                          street: StreetController.text,
                                        )));
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  )
                ],
              ),
            ]),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 6, 13, 217),
              child: Container(
                height: 30,
                width: 30,

                // color: Color.fromARGB(255, 255, 255, 255),
                child: Image.asset(
                  'assets/images/shopping-bag.png',
                ),
              ),
              onPressed: () {
                // Add item event handler
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
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
                          Container(
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
                      onPressed: () {},
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
                          SizedBox(
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
                        children: [
                          SizedBox(
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
            )));
  }
}
