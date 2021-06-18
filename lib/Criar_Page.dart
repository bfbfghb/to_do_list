import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {

     criar() async{
      Variaveis.bloconotas[nomeBloco] = textBloco.toString();
      print(Variaveis.bloconotas.toString());
      var pontotext = '.';

      // print(nomeBloco);
      // print(textBloco);
      //sleep(Duration(seconds: 2));
      for(int i = 0; i < 5; i++){
        ponto+= pontotext;
        setState(() {
          ponto = ponto;
          esperar = "Aguarde enquanto carregamos tudo para você";
        });
      }
      print(ponto);      
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
    }
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                    child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                            onSubmitted: (String value){textBloco = value;},
                            onChanged: (String value){textBloco = value;},
                          ),
                        ),
                  SizedBox(height: 50,),
                  ElevatedButton(onPressed: criar, child: Text("Salvar")),
                  SizedBox(height: 15,),
                  Text(esperar),
                  Text(ponto),
                ],
          ),
        ),
      ),
    );
  }
}

