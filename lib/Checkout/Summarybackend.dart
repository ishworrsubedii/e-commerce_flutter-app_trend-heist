import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:th/Checkout/Summary.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Profile.dart';

class OrderDisplay extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _OrderDisplayState createState() => _OrderDisplayState();
  OrderDisplay({super.key});
  // final snap;
}

class _OrderDisplayState extends State<OrderDisplay> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: StreamBuilder(
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
              return ListView.builder(
                itemBuilder: (context, index) {
                  return SummaryPage(
                    snap: snapshot.data!.docs[index].data(),
                  );
                },
                itemCount: snapshot.data!.docs.length,
              );
          }
          return CircularProgressIndicator();
        },
        stream: FirebaseFirestore.instance
            .collection("OrderCollection")
            .where("UserId", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
      ),
    

      
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
                              
                              )
                              )
                              );
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
      // floatingActionButton: CustomFloatingButton(),
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
          // Add item event handler
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
