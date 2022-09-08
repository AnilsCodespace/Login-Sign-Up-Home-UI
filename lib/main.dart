import 'package:flutter/material.dart';

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
      body: Container(width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(height: MediaQuery
                .of(context)
                .size
                .height / 2
              ,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logos/splash1.jpg"))
              ),

            ),
            Column(
              children: [
                MaterialButton(
                    minWidth: double.infinity, height: 60, onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()))
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
