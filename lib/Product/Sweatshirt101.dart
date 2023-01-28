// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:th/Homepage/Homepage.dart';

class Sweatshirt101 extends StatelessWidget {
  const Sweatshirt101({super.key});

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
            // ),
            SizedBox(
              width: 100,
            ),

            // IconButton(
            //   // alignment: Alignment.centerLeft,
            //   padding: const EdgeInsets.only(right: 0),

            //   icon: const Icon(Icons.search),
            //   tooltip: 'Search Icon',
            //   color: Colors.black,
            //   onPressed: () {},
            // ),
            InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 20,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/shopping-bag.png',
                    color: Color.fromARGB(255, 6, 13, 217),
                  ),
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
        body: FleeceHoodie101(),
      ),
    );
  }
}

class FleeceHoodie101 extends StatefulWidget {
  const FleeceHoodie101({super.key});

  @override
  State<FleeceHoodie101> createState() => _Sweatshirt101State();
}

class _Sweatshirt101State extends State<FleeceHoodie101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 365,
            width: 355,
            // child: Image.asset(),
            // 'assets/image/hoodie'

            // ),
          ),
        ],
      ),
    );
  }
}
