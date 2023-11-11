import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocerygo/models/productmodel.dart';

class ProductServices {
  final CollectionReference _productsCollection = FirebaseFirestore.instance.collection('products');

  // Add a product
  Future<ProductModel?> addProduct(ProductModel product) async {
    await _productsCollection.add({
      'name': product.name,
      'image': product.image,
      'quantity': product.quantity,
      'price': product.price,
      'category': product.category,
      'id':product.id,
      'status':product.status
    }).then(


            (value) {

              return product;

            }


    );
  }

  // Update a product by ID
  Future<ProductModel?> updateProduct(ProductModel product) async {
    await _productsCollection.doc(product.id).update({
      'name': product.name,
      'image': product.image,
      'quantity': product.quantity,
      'price': product.price,
      'category': product.category,
    }).then((value) => print("Product updated successfully"));
  }

  // Remove a product by ID
  Future<ProductModel?> removeProduct(ProductModel product) async {
    await _productsCollection.doc(product.id).delete().then((value) => print("Product removed successfully"));
  }

  // Get a list of all products
  Future<List<Map<String, dynamic>>> getAllProducts() async {
    final querySnapshot = await _productsCollection.get();
    return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }
}
