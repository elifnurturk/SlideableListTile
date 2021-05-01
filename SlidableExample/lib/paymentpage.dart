import 'package:auto_size_text/auto_size_text.dart';
import 'package:diyetisyen/BookPart.dart';
import 'package:diyetisyen/MoviePart.dart';
import 'package:diyetisyen/packetPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color backgroundAll = Color(0xFFFDFDE6);
const Color _color = Color(0xFFD5C8FC);

class NutriPackages extends StatefulWidget {
  NutriPackages({Key key}) : super(key: key);

  @override
  Nutri_PackagesState createState() => Nutri_PackagesState();
}

class Nutri_PackagesState extends State<NutriPackages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Container(
            color: backgroundAll,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 60, child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: _bolum0(size),
                )),
                Expanded(flex: 70, child: _bolum1(size)),
                Expanded(flex: 20, child: _bolum2(size)),
                Expanded(flex: 70, child: _bolum4(size)),
                Expanded(flex: 20, child: _bolum3(size)),
                Expanded(flex: 70, child: _bolum5(size)),
                Spacer(flex: 30),
              ],
            ),
          )),
    );
  }

  Container _bolum0(Size size) {
    return Container(
        width: size.width * 1,
        height: size.height*14.532,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.black54,),
                onPressed: () {}),
            AutoSizeText("Elif's suggestions",
              style: TextStyle(fontSize: 32,
              color: Colors.black54),
            ),
          ],
        )
    );
  }

  Container _bolum1(Size size) {
    return Container(
      child: Packet()
    );
  }

  Container _bolum2(Size size) {
    return Container(
      width: size.width * 0.89,
      height: size.height*4.433,
      color: backgroundAll,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AutoSizeText("  Book recommendations",
                  style: TextStyle(fontSize: 20, color: textcolor),
                ),
                new IconButton(
                    icon: new Icon(Icons.arrow_forward_ios_outlined),
                    onPressed: () {}),
                    ],
                  ),
    );
  }

  Container _bolum3(Size size) {
    return Container(
      width: size.width * 0.89,
      height: size.height*4.433,
      color: backgroundAll,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AutoSizeText("  Movie recommendations",
                style: TextStyle(fontSize: 20, color: textcolor),
              ),
              new IconButton(
                  icon: new Icon(Icons.arrow_forward_ios_outlined),
                  onPressed: () {}),
            ],
                ),

    );
  }
  Container _bolum4(Size size){
    return Container(
      width: size.width * 0.89,
      height: size.height*19.950,
      child: Account(),

    );
  }
  Container _bolum5(Size size){
    return Container(
      width: size.width * 0.89,
      height: size.height*19.950,
      child: Request(),
    );
  }
}
