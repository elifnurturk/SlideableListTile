import 'package:auto_size_text/auto_size_text.dart';
import 'package:diyetisyen/widgetpart.dart';
import 'package:flutter/material.dart';
import 'package:diyetisyen/Models/BooksData.dart';
import 'package:diyetisyen/Models/Books.dart';

const Color backgroundAll = Color(0xFFFDFDE6);
const Color _color = Color(0xFFD5C8FC);

class Account extends StatefulWidget {
  @override
  _account createState() => _account();
}

class _account extends State<Account> {
  List<Books> items = List.of(AccountData.books);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          color: backgroundAll,
          child: ListView.separated(
            itemCount: 2,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final item = items[index];
              return SlidableWidget_Account(
                child: buildListTile(item),
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

  Widget buildListTile(Books item) {
    double height = MediaQuery.of(context).size.height;
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
            vertical: 10,
            horizontal: 10,
          ),
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(item.urlAvatar),
            backgroundColor: Colors.white,
          ),
          title:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(item.bookname, style: TextStyle( fontSize: 16)),
                  AutoSizeText(item.writer, style: TextStyle( fontSize: 16)),
                ],
              ),
        ),
      ),
    );
  }
}