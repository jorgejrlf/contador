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

  void subtrair() {
    setState(() {
      count--;
    });
  }

  void zerar() {
    setState(() {
      count = 0;
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
        body: Container(
          child: Column(children: [
            Text(
              '$count',
            ),
            FloatingActionButton(
              child: Text('Add2'),
              onPressed: counter,
            ),
            FloatingActionButton(
              child: Text('Sub'),
              onPressed: subtrair,
            ),
            FloatingActionButton(
              child: Text('Zerar'),
              onPressed: zerar,
            )
          ]),
        ),
      ),
    );
  }
}
