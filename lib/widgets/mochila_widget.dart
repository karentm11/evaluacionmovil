import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/mochila.dart';

class MochilaWidget extends StatelessWidget {
  final Mochila mochila;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const MochilaWidget(
      {Key? key,
      required this.mochila,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(mochila.id);
      },
      onLongPress: () {
        onLongPress(mochila.id);
      },
      onTap: () {
        onTap(mochila);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: mochila.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(mochila.tipo, style: fromTextStyle),
                  Text(mochila.descripcion, style: fromTextStyle),
                  Text(mochila.precio, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
