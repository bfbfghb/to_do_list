import 'package:flutter/material.dart';
import 'Principal_Page.dart';
import 'Variaveis.dart';

class Ler extends StatefulWidget{
  @override
  _LerState createState() => _LerState();
}

class _LerState extends State<Ler> {
  @override
  Widget build(BuildContext context) {
  update(){
    Variaveis.listName = [];
      Variaveis.listText = [];
      Variaveis.bloconotas.forEach((key, value) {
        Variaveis.listName.add(key);
        Variaveis.listText.add(value);
      });
      Variaveis.save.save();
    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context) {return new Principal();}),);
  }
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: Variaveis.listText.length, itemBuilder: (context, index) {
        return ListTile(title: Container( color: Colors.grey,
          child: Column(
            children: [
              SizedBox(height: 25,),
              Text("${Variaveis.listName[index]}", style: TextStyle(fontSize: 24),),
              SizedBox(height: 15,),
              Text("${Variaveis.listText[index]}", style: TextStyle(fontSize: 12),),
              SizedBox(height: 50,),
              IconButton(onPressed: (){Variaveis.bloconotas.remove(Variaveis.listName[index]);update();}, icon: Icon(Icons.delete_forever))
            ],
          ),
        ),);
      },
    );
  }
}