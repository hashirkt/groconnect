import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    Text("All Orders",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.88,
                      child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (BuildContext context,int index){
                            return Card(
                              child: ListTile(
                                leading: Text((index+1).toString()),
                                title: Text("Order Heading"),
                                subtitle: Text("Order Details"),
                              ),
                            );
                          }),
                    ),
                  ],
                )
            ),
          )),
    );
  }
}
