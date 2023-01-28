import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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

  String? newUsername;

  void updateUsername() {
    FirebaseFirestore.instance
        .collection('UserInformationCollection')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'Username': newUsername});
  }

  void updateUsernameAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Update Username",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            content: TextField(
              onChanged: (value) {
                newUsername = value;
              },
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(80, 40),
                    textStyle: TextStyle(fontSize: 14),
                    primary: Color.fromARGB(255, 6, 13, 217),
                    onPrimary: Color.fromARGB(83, 6, 13, 217)),
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  updateUsername();
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(80, 40),
                    textStyle: TextStyle(fontSize: 14),
                    primary: Color.fromARGB(255, 6, 13, 217),
                    onPrimary: Color.fromARGB(83, 6, 13, 217)),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    fetchUserName();
    return Scaffold(
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          // ***************************************88**********8

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(61, 172, 170, 222)),
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Current Username",
                    style: TextStyle(fontFamily: "Poopins", fontSize: 20),
                  ),
                  Text(
                    "${username}",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${useremail}",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 190,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          fixedSize: Size(130, 60),
                          textStyle: TextStyle(fontSize: 14),
                          primary: Color.fromARGB(255, 6, 13, 217),
                          onPrimary: Color.fromARGB(83, 6, 13, 217)),
                      onPressed: () {
                        updateUsernameAlert();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Update Username",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 50,
          ),
          // *******************************************************8
        ],
      ),
    );
  }
}
