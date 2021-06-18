import 'package:flutter/material.dart';
import 'Criar_Page.dart';
import 'Variaveis.dart';
import 'ler_Content.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
    void initState() {
      Variaveis.save.load();
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    // Variaveis.bloconotas.forEach((key, value) {
    //   Variaveis.listName.add(key);
    //  Variaveis.listText.add(value);
    // });
      print(Variaveis.listName);
      print(Variaveis.listText);
      return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
            children: [
              AppBar(
              title: Center(child: Text("App")),
              actions: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.add), onPressed: () {
                    Navigator.pushReplacement(
                      context, new MaterialPageRoute(
                        builder: (BuildContext context) {return new Criar();}),);}),
              ],
              ),
              SizedBox(height: 15,),
              Container(width: double.maxFinite, height: 500, child: Ler()),   
              SizedBox(height: 15,),
              //ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Criar()),);}, child: Text("Criar")),
            ],
          ),
        ),
      )
    );
  }
}