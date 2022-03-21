import 'package:flutter/material.dart';
import 'produit_2.dart';
import './rating_box.dart';

class ProduitPage extends StatelessWidget {
  final Produit item;

  const ProduitPage({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.image),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(item.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(item.description),
                      Text('Prix: ' + item.prix.toString() + '€'),
                      RatingBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
