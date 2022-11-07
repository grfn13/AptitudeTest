part of 'grocery_shop_bloc.dart';

abstract class GroceryShopEvent extends Equatable {
  const GroceryShopEvent();

  @override
  List<Object> get props => [];
}

class GroceryShopPageInitializedEvent extends GroceryShopEvent{

}

class ItemAddingCartEvent extends GroceryShopEvent {
  List<GroceryItem> cartItems;

  ItemAddingCartEvent({required this.cartItems});

  
}

class  ItemAddedCartEvent extends GroceryShopEvent{
  List<GroceryItem> cartItems;

  ItemAddedCartEvent({required this.cartItems});  
}

class ItemDeletedCartEvent extends GroceryShopEvent{
  List<GroceryItem> cartItems;
  int index;
  
  ItemDeletedCartEvent({required this.cartItems, required this.index});  
}