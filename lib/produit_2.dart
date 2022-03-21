class Produit {
  final String name;
  final String description;
  final String image;
  final int prix;

  Produit(this.name, this.description, this.prix, this.image);
  static List<Produit> getProduit() {
    List<Produit> items = <Produit>[];

    items.add(
      Produit(
        "iphone",
        "c'est nul",
        10000,
        "assets/iphone.png",
      ),
    );
    items.add(
      Produit(
        "huawei",
        "c'est pas ouf",
        10,
        "assets/huawei.png",
      ),
    );
    items.add(
      Produit(
        "PC",
        "c'est pour coder",
        1000,
        "assets/pc.png",
      ),
    );
    items.add(
      Produit(
        "pixel",
        "ca passe",
        100,
        "assets/pixel.png",
      ),
    );
    items.add(
      Produit(
        "S10",
        "c'est sympa",
        200,
        "assets/S10.png",
      ),
    );
    items.add(
      Produit(
        "xiaomi",
        "ca va",
        100,
        "assets/xiaomi.png",
      ),
    );

    return items;
  }
}
