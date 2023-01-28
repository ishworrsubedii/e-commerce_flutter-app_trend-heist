import 'package:flutter/material.dart';
import 'package:th/Checkout/Checkoutpage2.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Profile.dart';

class CheckoutPage1 extends StatefulWidget {
  CheckoutPage1(
      {super.key,
      required this.hoodieTitle,
      required this.productId,
      required this.size,
      required this.color});

  String? productId;
  String? size;
  String? color;
  String? hoodieTitle;
  @override
  State<CheckoutPage1> createState() => _Checkoutpage();
}

class _Checkoutpage extends State<CheckoutPage1> {
  String? deliverytype = '';
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
                    color: Color.fromARGB(255, 221, 221, 221),
                    width: 100,
                  ),
                  Container(
                    height: 60,
                    width: 40,
                    child: Image.asset(
                        'assets/images/Checkout_image/Process_2.png'),
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
                        fontWeight: FontWeight.w400,
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
                height: 15,
              ),
              Column(
                children: [
                  ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Radio(
                        value: "Standard Delivery",
                        groupValue: deliverytype,
                        activeColor: Color.fromARGB(255, 6, 13, 217),
                        onChanged: (value) {
                          setState(() {
                            deliverytype = value.toString();
                          });
                        },
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Standard Delivery",
                            style: TextStyle(
                                fontFamily: 'Poopins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Order will be delivered between\n3 - 5 business days',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),

                              // textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Radio(
                        value: "Next Day Delivery",
                        groupValue: deliverytype,
                        activeColor: Color.fromARGB(255, 6, 13, 217),
                        onChanged: (value) {
                          setState(() {
                            deliverytype = value.toString();
                          });
                        },
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Next Day Delivery ",
                            style: TextStyle(
                                fontFamily: 'Poopins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Place your order before 6pm and your items will be delivered the next day',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),

                              // textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Radio(
                        value: "Nominated Date",
                        groupValue: deliverytype,
                        activeColor: Color.fromARGB(255, 6, 13, 217),
                        onChanged: (value) {
                          setState(() {
                            deliverytype = value.toString();
                          });
                        },
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Nominated Delivery",
                            style: TextStyle(
                                fontFamily: 'Poopins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Pick a particular date from the calendar and order will be delivered on selected date',

                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),

                              // textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // SizedBox(
              //   // ignore: sort_child_properties_last
              //   child: Column(children: [

              //     Text("Yamaha"),
              //     ListTile(
              //       leading: Radio(
              //         value: "yamaha",
              //         groupValue: delivery_type,
              //         onChanged: (value) {
              //           setState(() {
              //             delivery_type = value.toString();
              //           });
              //         },
              //       ),
              //     ),
              //   ]),
              //   height: 400,
              // ),

              // SizedBox(
              //   height: 15,
              // ),
              // InkWell(
              //   onTap: () {},
              //   child: Container(
              //     alignment: Alignment.center,
              //     height: 80,
              //     width: 40,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         color: Color.fromARGB(255, 6, 13, 217)),
              //   ),
              // )

              Padding(
                padding: const EdgeInsets.only(right: 110, left: 110),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(20, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(fontSize: 14),
                        primary: Color.fromARGB(255, 6, 13, 217),
                        onPrimary: Color.fromARGB(255, 150, 150, 150)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage2(
                                    hoodieTitle: widget.hoodieTitle,
                                    productId: widget.productId,
                                    size: widget.size,
                                    color: widget.color,
                                    deliveryType: deliverytype,
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
              SizedBox(
                height: 40,
              )
            ],
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
                              builder: (context) => ProfilePage(
                                    
                                   
                                  )));
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
        ));
    // var _selectedGender;
  }
}
