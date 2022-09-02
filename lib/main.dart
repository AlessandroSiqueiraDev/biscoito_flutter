import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//criando o array com as frses
  var listasFrases = [
    "Tudo o que um sonho precisa é de alguém que acredite que ele possa ser realizado.",
    "Pessimismo leva à fraqueza, otimismo ao poder.",
    "Pessimismo leva à fraqueza, otimismo ao poder.",
    "O pessimista vê dificuldade em cada oportunidade; o otimista vê oportunidade em cada dificuldade.",
    "Evite desencorajar-se: mantenha ocupações e faça do otimismo a maneira de viver. Isso restaura a fé em si.",
  ];

  //variavel que vai armazenar o caminho da imagem do biscoito
  var imgbiscoito = "images/biscoito_inteiro.png";

  //variavel que guarda a frase da sorte

  var frasedasorte = "Clique no botão quebrar o biscoito!";

  //metodo que quebra o bisoito

  void quebrarBiscoito() {
    var numero = Random().nextInt(listasFrases.length);
    print("Clicou no botão");

    setState(() {
      //gerando a frase da sorte
      frasedasorte = listasFrases[numero];

      //trocar imagem do bisoito
      imgbiscoito = "images/biscoito_aberto.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Biscoito da sorte!"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(imgbiscoito),
                      radius: 80,
                      backgroundColor: Colors.white,
                    ),
                    Text(frasedasorte,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, fontFamily: 'Pacifico')),
                    ElevatedButton(
                        onPressed: quebrarBiscoito,
                        child: Text("QUEBRAR O BISCOITO!"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red, onPrimary: Colors.white)),
                  ],
                ))));
    ;
  }
}
