class GroceryData {
  List<GroceryItem> groceryitems;

  GroceryData({required this.groceryitems});
}

class GroceryItem {
  String imageUrl;
  String thumbnail;
  String title;
  double price;
  int quantity;


  GroceryItem({

    required this.imageUrl,
    required this.thumbnail,
    required this.price,
    required this.quantity,
    required this.title

  });
}