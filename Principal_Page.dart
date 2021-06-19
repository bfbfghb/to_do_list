import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Criar_Page.dart';
import 'Variaveis.dart';
import 'ler_Content.dart';

class Principal extends StatefulWidget {
  static final title = "App";
  @override
  _PrincipalState createState() => _PrincipalState();
}
  
class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
      Variaveis.save.load();
      print(Variaveis.listName);
      print(Variaveis.listText);
      return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
            children: [
              AppBar(
              title: Text(Principal.title),
              actions: [
              IconButton(onPressed: (){
                 Navigator.pushReplacement(
                      context, new MaterialPageRoute(
                        builder: (BuildContext context) {return new Principal();}));
              }, icon: Icon(Icons.restart_alt)),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.add_box), onPressed: () {
                    Navigator.pushReplacement(
                      context, new MaterialPageRoute(
                        builder: (BuildContext context) {return new Criar();}),);}),
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: double.maxFinite, height: double.maxFinite, child: Ler()),
              ),   
              SizedBox(height: 15,),
            ],
          ),
        ),
      )
    );
  }
}