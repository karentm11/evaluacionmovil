import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../model/mochila.dart';
import '../widgets/mochila_widget.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}
 
class _ListScreenState extends State<ListScreen> {
  
  var mochilas = Backend().getMochilas();

  void markMochilaAsRead(int id) {
    Backend().markMochilaAsRead(id);
    setState(() {
      mochilas = Backend().getMochilas();
    });
  }

  void deleteMochila(int id) {
    Backend().deleteMochila(id);
    setState(() {
      mochilas= Backend().getMochilas();
    });
  }

  void showDetail(Mochila mochila) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(mochila: mochila);
    }));

    Backend().markMochilaAsRead(mochila.id);
    setState(() {
      mochilas = Backend().getMochilas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: mochilas.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
        itemBuilder: (BuildContext context, int index) => MochilaWidget(
          mochila: mochilas[index],
          onTap: showDetail,
          onLongPress: markMochilaAsRead,
          onSwipe: deleteMochila,
        ),
      ),
    );
  }
}
