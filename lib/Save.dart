import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Variaveis.dart';
import 'main.dart';

class Save {
  save() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //   Variaveis.bloconotas.forEach((key, value) {
    //    Variaveis.listName.add(key);
    //    Variaveis.listText.add(value);
    //   });
      // for (var key in Variaveis.bloconotas.keys) {
      //   print("key: $key");
      //   Variaveis.listName.add(key);
      // }
      // for (var value in Variaveis.bloconotas.values) {
      //   print("key: $value");
      //   Variaveis.listName.add(value);
      // }
      //for (var i = 0; i < Variaveis.bloconotas.length; i++) {
      //  Variaveis.listName.add(Variaveis.bloconotas[Key]);
      //}
    prefs.setStringList("listName", Variaveis.listName);
    print("Salvo ${Variaveis.listName}");
    prefs.setStringList("listText", Variaveis.listText);
    print("Salvo ${Variaveis.listText}");
  }

  load() async{
    for (var i = 0; i < Variaveis.listName.length; i++) {
      Variaveis.bloconotas[Variaveis.listName[i]] = Variaveis.listText[i];
      
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
      Variaveis.listText = prefs.getStringList("listText") ?? ["Teste"];
      Variaveis.listName = prefs.getStringList("listName") ?? ["123"];
      for (int i = 0; i < Variaveis.listName.length; i++ ) {
        Variaveis.bloconotas[Variaveis.listName[i]] = Variaveis.listText[i];
      }
    print("${Variaveis.bloconotas}");
  }
}