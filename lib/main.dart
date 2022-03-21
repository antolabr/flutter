import 'package:flutter/material.dart';
import 'produit_box.dart';
import 'produit_2.dart';

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
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'le flutter 3'),
      // ne plus avoir de bandeau test ^^
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final List<Produit> items = Produit.getProduit();
  final List<ProduitBox> test = [];
  @override
  Widget build(BuildContext context) {
    for (var item in items) {
      {
        test.add(ProduitBox(item: item));
      }
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(children: test)
        )
    );
  }
}
