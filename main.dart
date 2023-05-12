import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remove fita de  debug
    home: HomeFul(),
  ));
}

class HomeFul extends StatefulWidget {
  @override
  State<HomeFul> createState() => _HomeFulState();
}

class _HomeFulState extends State<HomeFul> {
  var frases = [
    'Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia',
    'O fracasso é apenas uma oportunidade para recomeçar com mais inteligência e determinação',
    'Não importa quantas vezes você caia, o importante é quantas vezes você se levanta.',
    'Não deixe seus medos tomar o controle, assuma o controle e vença seus medos.',
    'Grandes coisas nunca vêm de uma zona de conforto, saia da sua zona de conforto e faça acontecer.'
  ];
  var fraseAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 80, 50, 75),
            child: Image.asset(
              'imagens/logo.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 3, 100),
            child: Text(
              '${frases[fraseAtual]}',
              style: TextStyle(
                  fontSize: 18, wordSpacing: 8, fontWeight: FontWeight.w500),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                print(frases[fraseAtual]);
                fraseAtual++;
                if (fraseAtual == 5) {
                  fraseAtual = 0;
                }
              });
            },
            child: Text('Nova Frase'),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ],
      ),
    );
  }
}
