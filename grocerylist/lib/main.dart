import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerylist/UI/grocery_product_page.dart';
import 'package:grocerylist/groceryshop/bloc/grocery_shop_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Grocery Cart',
        theme: ThemeData(),
        home: BlocProvider(
          create: (context) => GroceryShopBloc(),
          child: const GroceryProductPage(),
          ),
    );
  }
}
