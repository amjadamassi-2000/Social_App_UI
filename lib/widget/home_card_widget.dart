import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1_gsg/model/home_card.dart';

class HomeWidget extends StatefulWidget {

  HomeCardModel _homeCardModel;
  HomeWidget(this._homeCardModel);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool isLiked = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ).createShader(
                    Rect.fromLTRB(0, 300, rect.width, rect.height - 1));
              },
              blendMode: BlendMode.darken,
              child: Container(
                height: MediaQuery.of(context).size.width * 1.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget._homeCardModel.img),
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
          ),

          //Side-bar Container
          Positioned(
            right: -5,
            top: 30,
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height:500,
                  child: SvgPicture.asset(
                    "assets/icons/side-bar.svg",
                    color: Color(0xffc9c9c9).withOpacity(0.5),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top:60,
                        bottom: 60,

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white.withOpacity(0.4),
                              ),
                              height: 60,
                              width: 60,
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: isLiked
                                    ? SvgPicture.asset(
                                        "assets/icons/heart-shape-silhouette.svg",
                                        color: Colors.red,
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/heart-shape-outine.svg",
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white.withOpacity(0.4),
                            ),
                            height: 60,
                            width: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: SvgPicture.asset(
                                "assets/icons/comment-option.svg",
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white.withOpacity(0.4),
                            ),
                            height: 60,
                            width: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: SvgPicture.asset(
                                "assets/icons/bookmark-black-shape.svg",
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white.withOpacity(0.4),
                            ),
                            height: 60,
                            width: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: SvgPicture.asset(
                                "assets/icons/plane.svg",
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(widget._homeCardModel.commentImage),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget._homeCardModel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by it",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget._homeCardModel.hash,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00d289),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

