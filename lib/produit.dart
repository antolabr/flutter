import 'package:flutter/material.dart';

class Produit extends StatelessWidget {
  const Produit({Key? key, this.name, this.description, this.price, this.image})
      : super(key: key);

  final String? description;
  final String? image;
  final String? name;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120.0,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            //le image! permet d'éviter d'avoir une valeur nulle dans image.
            Image.asset(image!), 
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Text(
                      name!,
                      style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                    Text(description!), 
                    Text("Prix: " + price.toString())
                  ]
                ),
              ),
            )
          ]
        )
      )
    );
  }
}
