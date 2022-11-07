import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:grocerylist/model/groceryshop.dart';
import 'package:grocerylist/repo/grocery_data_repo.dart';

part 'grocery_shop_event.dart';
part 'grocery_shop_state.dart';

class GroceryShopBloc extends Bloc<GroceryShopEvent, GroceryShopState> {
  GroceryDataProvider groceryDataProvider = GroceryDataProvider();
  GroceryShopBloc() : super(GroceryShopInitial()) {
    add(GroceryShopPageInitializedEvent());
  }
  
  Stream<GroceryShopState> mapEventToState(
    GroceryShopEvent event,
  ) async* {
    if (event is GroceryShopPageInitializedEvent){
      GroceryData groceryData = await groceryDataProvider.getGroceryItems(); // check this
      GroceryData cartData = await groceryDataProvider.getCartItems();
      yield GroceryShopePageLoadedState(groceryData: groceryData, cartData: cartData);
    }
    if(event is ItemAddingCartEvent){
      //yield ItemAddingCartState(cartItems: event.cartItems);
    }
    if(event is ItemAddedCartEvent){
      yield ItemAddedCartState(cartItems: event.cartItems);
    }
    if(event is ItemDeletedCartEvent){
      yield ItemDeletingCartState(cartItems: event.cartItems);
    }
  }
}

