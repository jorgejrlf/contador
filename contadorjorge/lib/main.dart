import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Mycontador());
}

var count = 0;

class Mycontador extends StatelessWidget {
  const Mycontador({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.blue,
        )),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu contador'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$count',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Add'),
          onPressed: counter,
        ),
      ),
    );
  }
}

void counter() {
  count++;
}
