import 'package:coffee/CustomWidget/Boldtext.dart';
import 'package:coffee/CustomWidget/Lighttext.dart';
import 'package:flutter/material.dart';

class Coffecard extends StatelessWidget {
  const Coffecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 160,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: 140,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 89),
              child: Container(
                height: 15,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_rate,
                      size: 15,
                      color: Colors.orange,
                    ),
                    BoldText(text: "4.5", size: 12)
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    text: "best coffee",
                    size: 16,
                  ),
                  LightText(
                    text: "the best coffee in the world",
                    size: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          BoldText(
                            text: "\$",
                            size: 14,
                            color: Colors.orange,
                          ),
                          BoldText(
                            text: " 120",
                            size: 14,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

        //
      ),
    );
  }
}
