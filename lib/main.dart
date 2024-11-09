import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Frases Do Dia",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> phrases = [
    "Comece onde você está, use o que você tem e faça o que você pode.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Devíamos ser ensinados a não esperar por inspiração para começar algo. Ação sempre gera inspiração. Inspiração raramente gera ação.",
    "Não importa que você vá devagar, contanto que você não pare.",
    "A inspiração existe, porém temos que encontrá-la trabalhando.",
    "Coragem é saber o que não temer.",
    "Conhecer a si mesmo é o começo de toda sabedoria.",
    "Descubra quem é você, e seja essa pessoa. A sua alma foi colocada nesse mundo para ser isso, então viva essa verdade e todo resto virá",
    "Acredite em milagres, mas não dependa deles",
    "A vida é 10% o que acontece a você e 90% como você reage a isso.",
  ];

  String generatedSentences = "Clique abaixo para gerar uma frase";

  void generatingSentences() {
    final random = Random();
    setState(() {
      generatedSentences = phrases[random.nextInt(phrases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6c7b7),
      appBar: AppBar(
        toolbarHeight: 38,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFE96D71),
              Color(
                0xFFFAD7A1,
              )
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
        title: const Text(
          "Frases Do Dia",
          semanticsLabel: "Frases Do Dia",
          style: TextStyle(
            fontFamily: 'ComfyFeeling',
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.book_circle,
              color: Colors.white,
              size: 35,
              semanticLabel: 'Um icone de livro em volta de um circulo',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'images/bookshelf-8995775_640.png',
              width: 210,
              height: 170,
              semanticLabel: 'Imagem de uma estante de livros coloridos ',
            ),
            const SizedBox(height: 10),
            const Text(
              "Frase do dia",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ComfyFeeling',
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                generatedSentences,
                style: TextStyle(
                  fontFamily: "ComfyFeeling",
                  color: Colors.white54.withOpacity(0.9),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  generatingSentences();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color(0xFFE96D71),
                ),
                child: Text(
                  "Gerar nova frase",
                  style: TextStyle(
                    fontFamily: "ComfyFeeling",
                    color: Colors.white54.withOpacity(0.5),
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
