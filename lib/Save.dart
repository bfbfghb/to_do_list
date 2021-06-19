import 'package:shared_preferences/shared_preferences.dart';
import 'Variaveis.dart';

class Save {
  save() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList("listName", Variaveis.listName);
    print("Salvo ${Variaveis.listName}");
    await prefs.setStringList("listText", Variaveis.listText);
    print("Salvo ${Variaveis.listText}");
  }

  load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
      Variaveis.listText = prefs.getStringList("listText") ?? [];
      Variaveis.listName = prefs.getStringList("listName") ?? [];
      for (int i = 0; i < Variaveis.listName.length; i++ ) {
        Variaveis.bloconotas[Variaveis.listName[i]] = Variaveis.listText[i];
      }
      print(Variaveis.listName);
      print(Variaveis.listText);
    print("${Variaveis.bloconotas}");
  }
}