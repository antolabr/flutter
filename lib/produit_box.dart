import './rating_box.dart';
import './produit_2.dart';
import 'package:flutter/material.dart';

class ProduitBox extends StatelessWidget {
  final Produit item;
  const ProduitBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 200,
      child: Card(
        child: Row(children: [
          Image.asset(item.image),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(item.description),
                  Text("Prix : " + item.prix.toString() + "€"),
                  RatingBox()
                ],
              ),
            ),
          ),
        ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
      ),
    );
  }
}
