// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:th/Privacy%20Policy/PrivacyPolicyPage.dart';
import 'package:th/Profile/Profile.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key, required this.snap});
  final snap;

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(62, 33, 27, 196)),
        width: 300,
        child: Text(
          "Your Orders",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 40,
        child: Text(
          "Order Details",
          style: TextStyle(fontSize: 20),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 50),
        alignment: Alignment.topRight,
        height: 1,
        width: 600,
        color: Colors.black,
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Product Name: ${widget.snap['ProductName']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50),
            alignment: Alignment.topRight,
            child: Text(
              "Size: ${widget.snap['Size']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Delivery Type: ${widget.snap['DeliveryType']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50),
            alignment: Alignment.topRight,
            child: Text(
              " Product Color: ${widget.snap['Color']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              " Country: ${widget.snap['Country']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Container(
            padding: EdgeInsets.only(left: 50),
            alignment: Alignment.topRight,
            child: Text(
              "State,Street: ${widget.snap['State']} ${widget.snap['State']}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Delete",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 13, color: Colors.white),
                ),
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 6, 13, 217)),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Order Delete?"),
                        content:
                            Text("Do you want to delete the selected  Order"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Yes"),
                            onPressed: () async {
                              await FirebaseFirestore.instance
                                  .collection('OrderCollection')
                                  .doc(widget.snap['orderId'])
                                  .delete();
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Deleted successfully")));
                            },
                          ),
                          TextButton(
                            child: Text("No"),
                            onPressed: () async {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    }
                    
                    );

                SizedBox(
                  height: 20,
                );
                Container(
                  padding: EdgeInsets.only(left: 50),
                  alignment: Alignment.topRight,
                  height: 1,
                  width: 600,
                  color: Colors.black,
                );
              })
        ],
      ),
    ]));

    // [Text('${widget.snap['ProductId']}')]
  }
}
