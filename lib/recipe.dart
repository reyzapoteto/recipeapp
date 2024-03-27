class recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<recipe> samples = [
    recipe('Kue Ape', 'ape.jpeg', 4, [
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce'),
    ]),
    recipe('Bebek Goreng', 'bebek.jpg', 2, [
      Ingredient(1, 'can', 'Tomato Soup'),
    ]),
    recipe('Kue Klepon', 'klepon.jpeg', 1, [
      Ingredient(2, 'slices', 'Cheese'),
      Ingredient(2, 'slices', 'Bread'),
    ]),
    recipe('Penyetan Lele', 'lele.webp', 24, [
      Ingredient(2, 'Buah', 'Lele'),
      Ingredient(2, 'Cup', 'Sambal'),
      Ingredient(0.5, 'buah', 'Sayur'),
    ]),
    recipe('Rawon', 'rawon.jpg', 1, [
      Ingredient(4, 'gram', 'daging'),
      Ingredient(3, 'buah', 'kluwek'),
      Ingredient(0.5, 'liter', 'air'),
      Ingredient(0.25, 'buah', 'garam'),
    ]),
    recipe('Tahu Tek', 'tahutek.jpg', 4, [
      Ingredient(1, 'buah', 'telur'),
      Ingredient(1, 'cakupan', 'sayur'),
      Ingredient(8, 'buah', 'lonting'),
    ]),
    recipe('Tahu Campur', 'tahucampur.jpg', 4, [
      Ingredient(5, 'buah', 'tahu'),
      Ingredient(1, 'liter', 'kuah'),
      Ingredient(8, 'gram', 'kotot'),
    ]),
    recipe('Kue Serabi', 'serabi.jpeg', 4, [
      Ingredient(1, 'gram', 'Tapung'),
      Ingredient(1, 'buah', 'pineapple'),
    ]),
    recipe('Kupang', 'kupang.jpg', 4, [
      Ingredient(1, 'cakup', 'kupang'),
      Ingredient(1, 'cup', 'kuah'),
      Ingredient(8, 'buah', 'lontong'),
    ]),
    recipe('Pecel', 'pecel.jpg', 4, [
      Ingredient(2, 'buah', 'sayuran'),
      Ingredient(8, 'buah', 'lontong'),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
