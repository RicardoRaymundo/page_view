import 'package:flutter/material.dart';

class ColoredPageLast extends StatelessWidget {

  PageController _pageControllerLast = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageControllerLast,
      itemBuilder: (context, position) {
        return Container(
          color: position % 2 == 0 ? Colors.deepPurpleAccent : Colors.grey,
          child: Center(
            child: Text(
              'Arraste para baixo \n ou \n para os lados',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        );
      },
      itemCount: 10, // pode ser nulo
    );
  }
}
