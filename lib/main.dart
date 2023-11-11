import 'package:flutter/material.dart';
import 'package:grocerygo/common/startpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GroConnect());
}

class GroConnect extends StatelessWidget {
  const GroConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
