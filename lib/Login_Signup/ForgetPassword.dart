import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:th/Auth/FirebaseAuth.dart';


class ForgotPassWordPage extends StatefulWidget {
  @override
  _ForgotPassWordPageState createState() => _ForgotPassWordPageState();
}

class _ForgotPassWordPageState extends State<ForgotPassWordPage> {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _email = TextEditingController();
  String? errorMessage = '';
  Future<void> sendPasswordResetEmail() async {
    try {
      await AuthService().sendPassWordResetEmail(email: _email.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _email,
              decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Reset Password"),
              onPressed: () async {
                try {
                  sendPasswordResetEmail();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Password reset"),
                          content: Text(
                              "A password reset email has been sent to your email address."),
                          actions: <Widget>[
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                } catch (e) {
                  setState(() {
                    errorMessage;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              errorMessage!,
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
