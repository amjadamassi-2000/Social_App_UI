import 'package:flutter/material.dart';
import 'package:project1_gsg/data/data.dart';
import 'package:project1_gsg/model/discover_card_model.dart';
import 'package:project1_gsg/widget/Discover_widget.dart';

class DiscoverScreen extends StatefulWidget {


  DiscoverModel discoverModel;
  DiscoverScreen({this.discoverModel});


  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Discover" ,
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Padding(
        padding:  EdgeInsets.only(top: 10),
        child: ListView(
          children: friends.map((e) {
            return DiscoverWidget(e);
          }).toList(),
        ),
      ),
    );
  }
}































// class DiscoverScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:SingleChildScrollView(
//         child: Column(
//           children: friends.map((e) {
//             return DiscoverWidget(e);
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
