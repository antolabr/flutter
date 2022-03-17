import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // ne plus avoir de bandeau test ^^
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "un message au centre de l'appli";
  get getTitle => title;

  set setTitle( title) => this.title = title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              color: Colors.red,
              image: const DecorationImage(
                image : AssetImage("clans-emotes.png"),
                //fit: BoxFit.cover
              ),
              border: Border.all(
                color: Colors.black,
                width: 12,
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Align(
              alignment: const FractionalOffset(0.2,0.4),
              child: Container(
                height: 40.0,
                width: 60.0,
                color: Colors.yellow,
              )
            ),
          ),
          Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: const DecorationImage(
                image : AssetImage("chaton4Karasu.png"),
                //fit: BoxFit.cover
              ),
              border: Border.all(
                color: Colors.black,
                width: 12,
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Align(
              alignment: const FractionalOffset(0.1,0.2),
              child: Container(
                height: 40.0,
                width: 60.0,
                color: Colors.red,
              )
            ),
          ),
          ]
        )
      )
    );
  }
}
