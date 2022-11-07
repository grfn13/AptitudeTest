import '../model/groceryshop.dart';

class GroceryDataProvider{
    Future<GroceryData> getGroceryItems() async{
      List<GroceryItem> groceryItems = [

        GroceryItem(
          imageUrl: "insert link here",
          price: 2.50,
          quantity: 1,
          title: 'Monster Energy Drink',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 2.50,
          quantity: 1,
          title: 'Starbucks Frappucino',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.50,
          quantity: 1,
          title: 'Lays',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.25,
          quantity: 1,
          title: 'Banana',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.25,
          quantity: 1,
          title: 'Chocolate Bar',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1,
          quantity: 1,
          title: 'Juice',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 3.50,
          quantity: 1,
          title: 'Milk',
          thumbnail: "insert link here",
        ),
      ];

      return GroceryData(groceryitems: groceryItems);
    }
    Future<GroceryData> getCartItems() async{
      List<GroceryItem> groceryItems = [

        GroceryItem(
          imageUrl: "insert link here",
          price: 2.50,
          quantity: 1,
          title: 'Monster Energy Drink',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 2.50,
          quantity: 1,
          title: 'Starbucks Frappucino',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.50,
          quantity: 1,
          title: 'Lays',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.25,
          quantity: 1,
          title: 'Banana',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1.25,
          quantity: 1,
          title: 'Chocolate Bar',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 1,
          quantity: 1,
          title: 'Juice',
          thumbnail: "insert link here",
        ),

        GroceryItem(
          imageUrl: "insert link here",
          price: 3.50,
          quantity: 1,
          title: 'Milk',
          thumbnail: "insert link here",
        ),
      ];

      return GroceryData(groceryitems: groceryItems);
    }
}

