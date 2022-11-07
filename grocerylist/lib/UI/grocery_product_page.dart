import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerylist/model/groceryshop.dart';

import '../groceryshop/bloc/grocery_shop_bloc.dart';

class GroceryProductPage extends StatefulWidget {
  const GroceryProductPage({Key? key}) : super(key: key);

  @override
  _GroceryProductPageState createState() => _GroceryProductPageState();
}

class _GroceryProductPageState extends State<GroceryProductPage> {
  List<GroceryItem> groceryItems = [];
  List<GroceryItem> cartItems = [];
  bool loadingData = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GroceryShopBloc, GroceryShopState>(
      listener: (context, state) {
        if(state is GroceryShopInitial){
          loadingData = true;
        }

        if(state is GroceryShopePageLoadedState){
          groceryItems = state.groceryData.groceryitems;
          cartItems = state.cartData.groceryitems;
          loadingData = false;
        }
        if(state is ItemAddedCartState){
          cartItems = state.cartItems;
        }
        if(state is ItemDeletingCartState){
          cartItems = state.cartItems;
        }

      },
      child: BlocBuilder<GroceryShopBloc, GroceryShopState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Grocery Cart'),
              backgroundColor: Colors.lightBlue,
            ),
            backgroundColor: const Color(0xFFEEEEEE),
            floatingActionButton: FloatingActionButton(
              onPressed: (){}, 
              backgroundColor: Colors.lightBlue,
              child: Text(cartItems.length.toString()),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        childAspectRatio: 0.6, 
                        crossAxisSpacing: 5, 
                        mainAxisSpacing: 5, 
                      ), 
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index){
                        return Stack(
                          children: [
                            Container(
                              height: 240,
                              width: 156,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 30),
                                    blurRadius: 60,
                                    color: const Color(0xFF393939).withOpacity(.1))
                                    ],
                                borderRadius: BorderRadius.circular(60),
                            ),
                            child: Column(),
                          ),
                          Positioned(
                            top: 30,
                            right: 4,
                            child: Image.network(
                              groceryItems[index].imageUrl,
                              height: 66,
                            )
                          ),
                          Positioned(
                            top: 120,
                            right: 4,
                            child: Text(
                              groceryItems[index].title,
                              style:
                                const TextStyle(fontWeight: FontWeight.bold),
                              )
                          ),
                          Positioned(
                            top: 140,
                            right: 30,
                            child: Text('\$${groceryItems[index].price}')
                            ),
                          Positioned(
                            bottom: 20,
                            right: 15,
                            child: TextButton(
                              style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                              ),
                              onPressed: (){},
                              child: const Text('Add to Cart'),
                            ),
                          )
                          ],
                        );
                      })
                    ],
                  ),
                ),
              ),
          );
        },
      ),
    );
  }
}