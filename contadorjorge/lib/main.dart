import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Mycontador());
}

class Mycontador extends StatefulWidget {
  const Mycontador({Key key}) : super(key: key);

  @override
  _MycontadorState createState() => _MycontadorState();
}

int count = 0;

class _MycontadorState extends State<Mycontador> {
  void counter() {
    setState(() {
      count++;
    });
  }

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
