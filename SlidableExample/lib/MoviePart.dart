import 'package:auto_size_text/auto_size_text.dart';
import 'package:diyetisyen/widgetpart.dart';
import 'package:flutter/material.dart';
import 'package:diyetisyen/Models/Movies.dart';
import 'Models/MovieData.dart';

const Color _color = Color(0xFF948BB0);
const Color backgroundAll = Color(0xFFFDFDE6);


class Request extends StatefulWidget {
  @override
  _request createState() => _request();
}

class _request extends State<Request> {
  List<Movies> items = List.of(MovieData.movies);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      return Scaffold(
          body: Container(
            color: backgroundAll,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: 2,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                final item2 = items[index];
                return SlidableWidget_request(
                  child: buildListTile(item2),
                  onDismissed: (action) =>
                      dismissSlidableItem(context, index, action),
                );
              },
            ),
          )
      );
}

  void dismissSlidableItem(
      BuildContext context, int index, SlidableAction action) {
    setState(() {
      items.removeAt(index);
    });
  }

  Widget buildListTile(Movies item2) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        height: height*0.09,
        decoration: BoxDecoration(
          color: _color,
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
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(item2.urlAvatar2),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(item2.movieName, style: TextStyle( fontSize: 18, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}