import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocerygo/models/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final CollectionReference _loginCollection = FirebaseFirestore.instance.collection('login');

  // add user

Future<void> RegisterUser(UserModel user) async{
  UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: user.email.toString(), password: user.password.toString());
  await _loginCollection.doc(userCredential.user!.uid).set({
    'id':userCredential.user!.uid,
    'name':user.name,
    'email':user.email,
    'password':user.password,
    'usertype':user.usertype,
    'createdAt':DateTime.now(),
    'status':1
  }).then((value) => print("success"));
}

//login

Future<DocumentSnapshot<Object?>> login(UserModel user)async{
  UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: user.email.toString(), password: user.password.toString());

  var snap = await _loginCollection.doc(userCredential.user!.uid).get();
  print(snap);
  SharedPreferences _pref = await SharedPreferences.getInstance();
  _pref.setString("token",userCredential.user!.refreshToken.toString());
  _pref.setString("name",snap['name']);
  _pref.setString("id",userCredential.user!.uid);
  print("admin");

  return snap;
}
Future<bool> isLoggedin() async{
  SharedPreferences pref = await SharedPreferences.getInstance();

  String? _token=await pref.getString('token');
  if (_token == null){
    return false;
  }else{
    return true;
  }
}
Future<void>LogOut()async{
  _auth.signOut();
  SharedPreferences pref=await SharedPreferences.getInstance();
  await pref.remove('token');
  await pref.clear();
}
}