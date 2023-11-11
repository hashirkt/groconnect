import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                  Text("All Notifications",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.88,
                    child: ListView.builder(
                        itemCount: 1000,
                        itemBuilder: (BuildContext context,int index){
                          return Card(
                            child: ListTile(
                              leading: Text((index+1).toString()),
                              title: Text("Title"),
                              subtitle: Text("Subtitle"),
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
