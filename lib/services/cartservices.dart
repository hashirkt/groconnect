import 'dart:convert';

import 'package:grocerygo/models/productmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/cartitem.dart';

class Cart{
  final List<CartItem> _items=[];
  final String cartKey = 'cart';
  List<CartItem>get items => _items;
  double get total => _items.fold(0.0,(total,item)=>total+(item.product.price!*item.count));
  Future<void>loadCart()async{
    final prefs = await SharedPreferences.getInstance();
    final cartData = prefs.getStringList(cartKey)??[];

    _items.clear();
    _items.addAll(cartData.map((jsonString){
      final json = jsonDecode(jsonString);
      return CartItem(product: ProductModel.fromJson(json['product']),
      count: json['count'],
      );
    }
    ));
  }
  Future<void>saveCart()async{
    final prefs = await SharedPreferences.getInstance();
    final cartData = _items.map((item){
      final Map<String,dynamic>itemJson = {
        'product':item.product.toJson(),
        'count':item.count,
      };
      return jsonEncode(itemJson);
    }).toList();
    await prefs.setStringList(cartKey, cartData);
  }
  void addToCart(ProductModel product){
    final existingItem= _items.firstWhere((item) => item.product.name == product.name,
    orElse: ()=>CartItem(product: product),
    );
    if(_items.contains(existingItem)){
      existingItem.count++;
    }else{
      _items.add(existingItem);
    }
    saveCart();
  }
  void removeFromCart(CartItem item){
    if(item.count>1){
      item.count--;
    }else{
      _items.remove(item);
    }
    saveCart();
  }
}

