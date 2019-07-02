import 'package:flutter/material.dart';

class ColoredPageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      //Diversas propriedades que alteram o comportamento do PageView
      //pageSnapping: false, //permite posicoes instermediarias entre as paginas
      //scrollDirection: Axis.vertical,
      //physics: BouncingScrollPhysics(),
      itemBuilder: (context, position) {
        return Container(
          //Essa função de construção retorna 'infinitos' Container
          //A logica abaixo faz com que o proximo Container construido
          //tenha a cor oposta ao anterior
          color: position % 2 == 0 ? Colors.pink : Colors.cyan,
          child: Center(
            child: Text('Arraste para cima \n ou \n para os lados',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        );
      },
    );
  }
}
