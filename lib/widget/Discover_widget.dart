import 'package:flutter/material.dart';
import 'package:project1_gsg/model/discover_card_model.dart';

class DiscoverWidget extends StatefulWidget {
  static String routeName = "/discover";

  DiscoverModel _discoverModel;

  DiscoverWidget(this._discoverModel);

  @override
  _DiscoverWidgetState createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
         Stack(
          children: [
            Padding(
              padding:
                   EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  height: 55,
                  width: 55,
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        widget._discoverModel.image,
                      ),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.all(0),
                title: Text(widget._discoverModel.name),
                subtitle: Text("@-----------------"),
                trailing: widget._discoverModel.isAccept
                    ? Container(
                  width: 100.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff651CE5).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset:
                        Offset(0, 5),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.9],
                      colors: [
                        Color(0xff651CE5),
                        Color(0xff811ce5),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                  ),
                )
                    : Container(
                  width: 100.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff651CE5).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset:
                        Offset(0, 5),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.9],
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.grey,
                      ],
                    ),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Unfollow',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),

    );
  }
}



