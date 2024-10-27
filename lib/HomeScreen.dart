import 'package:coffee/CustomWidget/Boldtext.dart';
import 'package:coffee/CustomWidget/CoffeSpecialcard.dart';
import 'package:coffee/CustomWidget/Coffecard.dart';
import 'package:coffee/CustomWidget/Lighttext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

List itemlist = ["item1", "item2", "item3", "item4", "item5", "item6", "list7"];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.grey.withOpacity(0.8),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey.withOpacity(0.8),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey.withOpacity(0.8),
                ),
                label: ""),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.apps,
                        size: 30,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child:
                      BoldText(text: "Find the best\ncoffee for you", size: 35),
                ),
                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: TextFormField(
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 18),
                          decoration: InputDecoration(
                            hintText: "Find your coffee...",
                            border: InputBorder.none,

                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.3),
                                fontSize: 18),
                            // labelText: "Find your coffee...",
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: itemlist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          width: 80,
                          child: Center(
                            child: LightText(
                              text: itemlist[index].toString(),
                              color: index == 0
                                  ? Colors.orange
                                  : Colors.white.withOpacity(0.5),
                              size: 14,
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20),
                //item list

                Container(
                  height: 231,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemlist.length,
                      itemBuilder: (context, index) {
                        return Expanded(child: Coffecard());
                      }),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.maxFinite,
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: itemlist.length,
                      itemBuilder: (context, index) {
                        return Expanded(child: Coffespecialcard());
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
