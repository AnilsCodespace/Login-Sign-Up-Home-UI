import 'package:flutter/material.dart';
import 'package:splashloginsignup1/signup.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logos/splash1.jpg"))),
            ),
            Container(padding: EdgeInsetsDirectional. only(top: 30),
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),



                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18 ),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
