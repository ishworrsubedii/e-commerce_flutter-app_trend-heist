import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:th/Checkout/Summarybackend.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Login_Signup/Login.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Editprofile.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? username;
  String? useremail;

  void fetchUserName() async {
    User uid = await FirebaseAuth.instance.currentUser!;
    if (uid != null) {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('UserInformationCollection')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      setState(() {
        username = snapshot['Username'];
        useremail = snapshot['UserEmail'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchUserName();
    return (MaterialApp(
        home: Scaffold(
            body: ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: ClipOval(
                  child: Image.asset(
                'assets/images/Profile_icon/profile.jpg',
                fit: BoxFit.contain,
              )),
            ),
            SizedBox(
              width: 40,
            ),
            Column(children: [
              Text(
                "${username}",

                // 'Ishwor Subedi',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "${useremail}",
                // LoginPage.email!),

                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              )
            ]),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfile()));
          },
          child: Column(children: [
            Container(
              height: 45,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/edit.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 180,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/map-pin.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Shipping Address',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 120,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/starr.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Wishlist',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 200,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderDisplay()));
          },
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/rotate-ccw.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Order History',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 160,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/box.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Track Order',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 170,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/credit-card.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Payment Options',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 125,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/bell.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Notificatons',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 170,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            logOut();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          },
          child: Column(children: [
            Container(
              height: 45,
              // color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(40, 198, 190, 190),
                    ), // child: Image.asset('assets/images/Rightarrow.png'),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Profile_icon/log-out.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    // flex: 1,
                    Text(
                      'Log Out',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
                  SizedBox(
                    width: 200,
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/Rightarrow.png',
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ]),

          // color: Colors.black,
        ),
        SizedBox(
          height: 100,
        )
      ],
    ))));
  }

  logOut() {
    FirebaseAuth.instance.signOut();
  }
}
