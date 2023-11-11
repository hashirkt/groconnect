import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel{
  String?name;
  String?id;
  String?image;
  String?quantity;
  int?price;
  String?category;
  DateTime? createdat;
  int?status;

  ProductModel({this.name,this.image,this.quantity,this.price,this.category,this.id,this.status,this.createdat});

  factory ProductModel.fromJson(DocumentSnapshot snapshot){
    Map<String,dynamic> json=snapshot.data() as Map<String,dynamic>;
    return ProductModel(
      name: json['name'],
      image: json['image'],
      quantity: json['quantity'],
      price: json['price'],
      category: json['category'],
        id: json['id'],
        status: json['status']
    );
  }

  Map<String, dynamic>toJson(){
    return {
      'name':name,
      'image':image,
      'quantity':quantity,
      'price':price,
      'category':category,
      'id':id,
      'status':status
    };
  }
}