import 'package:flutter/material.dart';

class ColoredPageMiddle extends StatelessWidget {

  PageController _pageControllerSecond = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageControllerSecond,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text(
              'Arraste para cima e baixo \n ou \n para os lados',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Arraste para cima e baixo \n ou \n para os lados',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            )),
        Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                'Arraste para cima e baixo \n ou \n para os lados',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            )),
      ],
    );
  }
}
