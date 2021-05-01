import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'Models/Packets.dart';
import 'Models/packetData.dart';

const Color backgroundAll = Color(0xFFF2F2F2);
const Color textcolor = Color(0xFF2B4E27);

class Packet extends StatefulWidget {
  @override
  _packets createState() => _packets();
}
class _packets extends State<Packet> {
  List<Packets> items = List.of(PacketData.packets);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.90,
      height: height*0.19211,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AutoSizeText("  Let's start there!",
                  style: TextStyle(fontSize: 20,
                      color: textcolor),
                ),
                new IconButton(
                    icon: new Icon(Icons.arrow_forward_ios_outlined),
                    onPressed: () {}),
              ],
            ),
            Container(
              width: width * 0.95,
              height: height*0.136,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 3,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final itempack = items[index];
                  return getpackets(itempack);
                },
              ),
        )
          ]),
    );
  }

  Widget getpackets(Packets itempack) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width*0.27,
            height: height*0.1318,
            decoration: BoxDecoration(
              color: itempack.container,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(itempack.name, style: TextStyle(color: Colors.white, fontSize: 18, )),
                SizedBox(height: 5),
                AutoSizeText(itempack.go, style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
        ],
      )
    );
  }
}
