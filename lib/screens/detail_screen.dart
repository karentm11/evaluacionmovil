import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/mochila.dart';

class DetailScreen extends StatelessWidget {
  final Mochila mochila;

  const DetailScreen({Key? key, required this.mochila}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(mochila.tipo),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('tipo: ${mochila.tipo}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('descripcion: ${mochila.descripcion}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('precio: ${mochila.precio}', style: fromTextStyle)
            ],
          ),
        ));
  }
}
