part of 'grocery_shop_bloc.dart';

abstract class GroceryShopState extends Equatable {
  const GroceryShopState();
  
  @override
  List<Object> get props => [];
}

class GroceryShopInitial extends GroceryShopState {}

class GroceryShopePageLoadedState extends GroceryShopState {
  GroceryData groceryData;
  GroceryData cartData;

  GroceryShopePageLoadedState({required this.cartData, required this.groceryData});
}

class ItemAddingCartState extends GroceryShopState {
  GroceryData cartData;
  List<GroceryItem> cartItems;

  ItemAddingCartState({required this.cartData, required this.cartItems});
}

class ItemAddedCartState extends GroceryShopState {
  List<GroceryItem> cartItems;

  ItemAddedCartState({required this.cartItems});
}

class ItemDeletingCartState extends GroceryShopState {
  List<GroceryItem> cartItems;

  ItemDeletingCartState({required this.cartItems});
}
