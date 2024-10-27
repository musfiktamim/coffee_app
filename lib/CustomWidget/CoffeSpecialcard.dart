import 'package:coffee/CustomWidget/Boldtext.dart';
import 'package:coffee/CustomWidget/Lighttext.dart';
import 'package:flutter/material.dart';

class Coffespecialcard extends StatelessWidget {
  const Coffespecialcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.maxFinite,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  width: 140,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Colors.red,
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
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(
                        text: "New 5 best coffee for\nyou",
                        size: 22,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LightText(
                        text: "The best coffe in the world",
                        size: 14,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                BoldText(
                                  text: "\$",
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                BoldText(
                                  text: "120",
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
