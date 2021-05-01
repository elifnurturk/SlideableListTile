import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

enum SlidableAction { add, delete }
enum SlideableAction2{ ok ,delete}
const Color colorx = Color(0xFF6E6782);
const Color colorx2 = Color(0xFFFFF1C9);

class SlidableWidget_Account<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;

  const SlidableWidget_Account({
    @required this.child,
    @required this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SlidableController _controller = SlidableController();
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 5
          ),
          child: Container(
            height: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
                color: colorx,
            ),
      ),
        ),
      Slidable(
        actionExtentRatio: 0.20,
        controller: _controller,
        actionPane: SlidableBehindActionPane(),
        child: child,
        secondaryActions: <Widget>[
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
            child: IconSlideAction(
              color: colorx,
              icon: Icons.delete_outline,
              onTap: () => {},
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: IconSlideAction(
            foregroundColor: Colors.black,
            color: colorx2,
            icon: Icons.auto_fix_normal,
            onTap: () => {},
          ),
        )
      ],

    ),
      ],
    );
  }
}

class SlidableWidget_request<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;

  const SlidableWidget_request({
    @required this.child,
    @required this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SlidableController _controller = SlidableController();
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 5          ),
          child: Container(
            height: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: colorx,

            ),
          ),
        ),
        Slidable(
          actionExtentRatio: 0.20,
          controller: _controller,
          actionPane: SlidableBehindActionPane(),
          child: child,
          secondaryActions: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: IconSlideAction(
                color: colorx,
                icon: Icons.delete_outline,
                onTap: () => {},
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: IconSlideAction(
                foregroundColor: Colors.black,
                color: colorx2,
                icon: Icons.arrow_forward_ios_outlined,
                onTap: () => {},
              ),
            )
          ],
        ),
      ],
    );
  }
}