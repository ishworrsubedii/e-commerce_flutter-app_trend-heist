//

// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:th/Checkout/Checkoutpage2.dart';
import 'package:th/Checkout/Checkoutpage_1.dart';
import 'package:th/Checkout/Summarybackend.dart';
import 'package:th/Checkout/Summary.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Profile.dart';
import 'package:uuid/uuid.dart';

class CheckoutPage3 extends StatefulWidget {
  CheckoutPage3(
      {super.key,
      required this.hoodieTitle,
      required this.productId,
      required this.size,
      required this.color,
      required this.deliveryType,
      required this.city,
      required this.country,
      required this.state,
      required this.street});
  String? productId;
  String? size;
  String? color;
  String? hoodieTitle;
  String? deliveryType;
  String? state;
  String? city;
  String? street;
  String? country;

  @override
  State<CheckoutPage3> createState() => _Checkoutpage();
}

class _Checkoutpage extends State<CheckoutPage3> {
  TextEditingController NoteController = TextEditingController();

  final List<String> paymentMethod = ["E-sewa", "Cash On Hand", "Bank"];
  String? selectedMethod;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

            // var _selectedGender;
            body: ListView(
              children: [
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
                      color: Color.fromARGB(255, 6, 13, 217),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 40,
                          child: Image.asset(
                              'assets/images/Checkout_image/Process_1.png'),
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
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                  // chi
                  // Text('Delivery'),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                      height: 130,
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: List.generate(paymentMethod.length, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedMethod = paymentMethod[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 80,
                                width: 120,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color:
                                        selectedMethod == paymentMethod[index]
                                            ? Color.fromARGB(255, 6, 13, 217)
                                            : Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: selectedMethod ==
                                                paymentMethod[index]
                                            ? Color.fromARGB(255, 6, 13, 217)
                                            : Color.fromARGB(44, 0, 0, 0))),
                                child: Text(
                                  paymentMethod[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        selectedMethod == paymentMethod[index]
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Note (Optional)",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(205, 112, 112, 112),
                          fontSize: 14),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // alignment: Alignment.topRight,
                      // height: 90,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextField(
                          controller: NoteController,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 45,
                    ),
                    SizedBox(
                      width: 145,
                      height: 50,
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
                              String orderId = Uuid().v1();
                              FirebaseFirestore.instance
                                  .collection("OrderCollection")
                                  .doc(orderId)
                                  .set({
                                'ProductName': widget.hoodieTitle,
                                'ProductId': widget.productId,
                                'Size': widget.size,
                                'Color': widget.color,
                                'UserId':
                                    FirebaseAuth.instance.currentUser!.uid,
                                'DeliveryType': widget.deliveryType,
                                'State': widget.state,
                                'Street': widget.street,
                                'Country': widget.country,
                                'City': widget.city,
                                'orderId': orderId
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderDisplay()));
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
              ],
            )));
  }
}
