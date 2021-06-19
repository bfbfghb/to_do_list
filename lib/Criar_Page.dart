import 'package:flutter/material.dart';
import 'package:to_do_note_app/PassGenerator/main.dart';
import 'Principal_Page.dart';
import 'Save.dart';
import 'Variaveis.dart';

class Criar extends StatefulWidget {
  @override
  _CriarState createState() => _CriarState();
}

class _CriarState extends State<Criar> {
  String textBloco;

  String nomeBloco;

  var ponto = "";

  var esperar = '';
  var password = "";
  @override
  Widget build(BuildContext context) {
    criar() async{
      Variaveis.bloconotas[nomeBloco] = textBloco.toString();
      print(Variaveis.bloconotas.toString());
      var pontotext = '.';
      for(int i = 0; i < 5; i++){
        ponto+= pontotext;
        setState(() {
          ponto = ponto;
          esperar = "Aguarde enquanto carregamos tudo para você";
        });
      }
      Variaveis.listName = [];
      Variaveis.listText = [];
      Variaveis.bloconotas.forEach((key, value) {
        Variaveis.listName.add(key);
        Variaveis.listText.add(value);
      });
      Variaveis.save.save();
      print(ponto);      
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
    }

    verificar(){
      if(nomeBloco == null || textBloco == null || textBloco == "" || nomeBloco == ""){
        setState(() {
          esperar = "Preencha todos os campos!";
        });
      }
      else if(nomeBloco == null && textBloco == null || nomeBloco == "" && textBloco == ""){
        setState(() {
          esperar = "Preencha todos os campos!";
        });
      }
      else{
        criar();
      }
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(Principal.title),
          actions: [IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
          }, icon: Icon(Icons.close))],),
        body: Column(
              children: [
                SizedBox(height: 50,),
                Center(child: Text("Nome")),
                Container(
                  child: TextField(textAlign: TextAlign.center,
                  onSubmitted: (String valor){nomeBloco = valor;},
                  onChanged: (String valor){nomeBloco = valor;},
                  ),
                ),
                SizedBox(height: 15,),
                Center(child: Text("Adicione")),
                Container(
                  child: Column(
                    children: [
                      TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                              onSubmitted: (String valor2){textBloco = valor2;},
                              onChanged: (String valor2){textBloco = valor2;},
                            ),
                        Text(password),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: verificar, child: Text("Salvar")),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){PassGenerator passGenerator = new PassGenerator();
                passGenerator.createPass(); textBloco = PassGenerator.pass; setState((){password = "PassWord: $textBloco";});print(PassGenerator.pass); }, 
                child: Column(children: [
                  Text("Pass Generator"),
                  ])),
                Text(esperar),
                Text(ponto),
              ],
        ),
      ),
    );
  }
}