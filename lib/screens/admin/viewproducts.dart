import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({super.key});

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FutureBuilder(future: FirebaseFirestore.instance.collection('products').get(),
    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return CircularProgressIndicator(); // Show a loading indicator while data is being fetched
    } else if (snapshot.hasError) {
    return Text('Error: ${snapshot.error}');
    } else {
    // Process the data and build your UI here
    // Example:
    return ListView.builder(
    itemCount: snapshot.data!.docs.length,
    itemBuilder: (context, index) {
    var product = snapshot.data!.docs[index];
    // Build your product item UI here
    return ListTile(
    title: Text(product['name']),
    subtitle: RichText(text: TextSpan(
      text:'Price: ${product['price']}',

    ),

    )

    // Add more details or customize based on your data structure
    );
    },
    );
    }
    },
        ),
      ),
    );
  }
}
