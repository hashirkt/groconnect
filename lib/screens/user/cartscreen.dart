import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/services/cartservices.dart';

class CartScreen extends StatelessWidget {
  final Cart cart;
  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart",style: GoogleFonts.aBeeZee(),),
      ),
      body: ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (context,index){
            final item = cart.items[index];
            return ListTile(
              title: Text(item.product.name.toString()),
                subtitle: Text(item.product.category.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){
                    cart.removeFromCart(item);
                  }, icon: Icon(Icons.remove_shopping_cart),
                  )  ,
                  Text('Quantity:${item.count}'),
                  IconButton(onPressed: (){
                    cart.addToCart(item.product);
                  }, icon: Icon(Icons.add_shopping_cart))
                ],
              ),
            );
          }),
      bottomSheet: Padding(padding: const EdgeInsets.all(16),
      child: Text("Total Price:\$${cart.total.toStringAsFixed(2)}",
      style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),
      ),
      ),
    );
  }
}
