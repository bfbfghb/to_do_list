
import 'dart:ui';

import 'package:flutter/material.dart';

import 'Variaveis.dart';

class Ler extends StatefulWidget {
  @override
  _LerState createState() => _LerState();
}

class _LerState extends State<Ler> {
  @override
  Widget build(BuildContext context) {
    Variaveis.listName = [];
    Variaveis.listText = [];
    Variaveis.save.load();
    Variaveis.bloconotas.forEach((key, value) {
      setState(() {
        Variaveis.listName.add(key);
        Variaveis.listText.add(value);
      });
      Variaveis.save.save();
    });
    return ListView.builder(itemCount: Variaveis.listText.length, itemBuilder: (context, index) {
        return ListTile(title: Column(
          children: [
            Text("${Variaveis.listName[index]}", style: TextStyle(fontSize: 24),),
            SizedBox(height: 15,),
            Text("${Variaveis.listText[index]}", style: TextStyle(fontSize: 12),),
            SizedBox(height: 50,),
          ],
        ),);
      },
    );
  }
}