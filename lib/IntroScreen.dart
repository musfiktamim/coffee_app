import 'package:coffee/CustomWidget/Boldtext.dart';
import 'package:coffee/HomeScreen.dart';
import 'package:flutter/material.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              "assets/1.png",
              color: Colors.white,
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: BoldText(
                    text: "Go Home Page",
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
