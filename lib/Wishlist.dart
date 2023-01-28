import 'package:flutter/material.dart';
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 6, 13, 217),
        child: Container(
          height: 30,
          width: 30,
          child: Image.asset(
            'assets/images/shopping-bag.png',
          ),
        ),
        onPressed: () {
          // Add item event handler
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/home_1.png'),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishlistPage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/wishlist_1.png',
                        color: Color.fromARGB(255, 6, 13, 217),
                      ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage(
                               
                              )));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/user_1.png',
                      ),
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage(
                            
                          )));
            },
            child: Container(
              height: 20,
              width: 15,
              alignment: Alignment.center,

              // padding: const EdgeInsets.only(right: 60),
              child: Image.asset('assets/images/homepage.png'),
            ),
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

          IconButton(
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

      body: const Wishlistpage(),
      backgroundColor: Color.fromARGB(255, 243, 243, 255),
    );
    // );
  }
}

class Wishlistpage extends StatefulWidget {
  const Wishlistpage({super.key});

  @override
  State<Wishlistpage> createState() => _WishlistpageState();
}

class _WishlistpageState extends State<Wishlistpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      alignment: Alignment.center,
      child: Text(
        "This Page Is Under Delvelopment",
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
