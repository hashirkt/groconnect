import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String?id;
  String?name;
  String?email;
  String?password;
  String?usertype;
  bool?status;
  var createdAt;

  UserModel({this.id,this.name,this.email,this.password,this.usertype,this.status,this.createdAt});

  factory UserModel.fromJson(DocumentSnapshot snapshot){
    Map<String,dynamic> json=snapshot.data() as Map<String,dynamic>;
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        password: json['password'],
        status: json['status'],
        createdAt: json['createdAt'],
        usertype: json['usertype']
    );
  }
  Map<String,dynamic>toJson(){

    return {

      'id':id,
      'name':name,
      'email':email,
      'password':password,
      'status':status,
      'createdAt':createdAt,
      'usertype':usertype,

    };
  }
}