import 'package:flutter/material.dart';
import 'produit.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Liste des produits'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: const <Widget>[
          Produit(
            name:"iPhone",
            description: "c'est extremement nul!",
            price: 100,
            image: "assets/iphone.png",
          ),
          Produit(
            name:"huawei",
            description: "c'est pas ouf",
            price: 10,
            image: "assets/huawei.png",
          ),
          Produit(
            name:"PC",
            description: "c'est pour coder",
            price: 1000,
            image: "assets/pc.png",
          ),
          Produit(
            name:"pixel",
            description: "ca passe",
            price: 100,
            image: "assets/pixel.png",
          ),
          Produit(
            name:"S10",
            description: "c'est sympa",
            price: 200,
            image: "assets/S10.png",
          ),
          Produit(
            name:"xiaomi",
            description: "ca va",
            price: 100,
            image: "assets/xiaomi.png",
          ),
        ]
      ),
    );
  }
}
