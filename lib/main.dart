import 'package:flutter/material.dart';
import 'package:page_view/colored_pages/colored_page_first.dart';
import 'package:page_view/colored_pages/colored_page_middle.dart';
import 'package:page_view/colored_pages/colored_page_last.dart';

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
      home: MyHomePage(title: 'Exemplo de PageView'),
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
          //Widgets importados do diretório colored_pages
          ColoredPageFirst(),
          ColoredPageMiddle(),
          ColoredPageLast(),
        ],
      ),
    );
  }
}
