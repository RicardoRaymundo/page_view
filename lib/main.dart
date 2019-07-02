import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Declarando variavel de controle do PageView
  PageController _secondPageController = PageController();

//TODO: Fazer transição animada
  PageController _lastPageController = PageController();
  var currentPageValue = 0.0;


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        //PageView podem outros PageView como filho, como feito abaixo
        //Mudando o scrollDirection, posso acessar meus PageView verticalmente
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PageView.builder(
            //Diversas propriedades que alteram o comportamento do PageView
            //pageSnapping: false,
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
          ),
          PageView(
            controller: _secondPageController,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Arraste para cima e baixo \n ou \n para os lados',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                  child: Center(
                    child: Text('Arraste para cima e baixo \n ou \n para os lados',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                  )
              ),
              Container(
                color: Colors.amber,
                  child: Center(
                    child: Text('Arraste para cima e baixo \n ou \n para os lados',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                  )
              ),
            ],
          ),
          PageView.builder(
            controller: _lastPageController,
            itemBuilder: (context, position){
              return Container(
                color: position % 2 == 0 ? Colors.deepPurpleAccent : Colors.grey,
                child: Center(
                  child: Text('Arraste para cima \n ou \n para os lados',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              );
            },
            itemCount: 10, // pode ser nulo
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //
    );
  }
}
