import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1_gsg/data/data.dart';
import 'package:project1_gsg/widget/home_card_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title:  Container(
            height: 80,
            child: Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/menu.svg",
                      color: Color(0xff651CE5),
                      height: 50,
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset(
                      "assets/icons/notification.svg",
                      height: 30,
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                      height: 30,
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 150,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.black.withOpacity(0.05),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              height: 45,
                              width: 45,
                              child: Padding(
                                padding:
                                 EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/dis2.jpg'),
                                  radius: 25,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Alina",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15),
                            child: SvgPicture.asset(
                              "assets/icons/tick.svg",
                              height: 21,
                              color: Color(0xff00d289),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:20),
            child: Column(
              children: posts.map((e) {
                return HomeWidget(e);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
