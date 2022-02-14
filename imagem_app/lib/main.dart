// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ImagemTeste());
}

class ImagemTeste extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagem teste",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo Imagem"),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              //primeiro
              Image.asset("assets/corinthians.png"),
              Text("MELHOR TIME DO BRASIL"),
              
              Image.network("https://pbs.twimg.com/media/CrWcIo6XYAAY7y8.jpg")

            ],
          ),
        ),
      ),
    );


    throw UnimplementedError();
  }

}

