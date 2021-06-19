import 'dart:io';

import 'package:flutter/material.dart';
import 'package:to_do_note_app/Variaveis.dart';
import 'Principal_Page.dart';

void main() => runApp(MaterialApp(
      title: Principal.title,
      home: LoadPage(),
));

class LoadPage extends StatefulWidget {
  const LoadPage({ Key key }) : super(key: key);

  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  double valor;
  // @override
  // void initState() {
  //   //update();
  //   // Variaveis.save.load();
  //   // sleep(Duration(seconds: 1));
  //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
  //   super.initState();
  // }
  update() async{
    for (var i = 0; i < 100; i++) {
      valor;
    }
    Variaveis.save.load();
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
  }
  @override
  Widget build(BuildContext context) {
    update();
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                value: valor,
          ),
        ),
      ),
    );
  }
}