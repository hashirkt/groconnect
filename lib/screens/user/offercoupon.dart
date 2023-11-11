
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart'; // Import for clipboard operations

class OfferCoupon extends StatelessWidget {
  final String couponCode = "SAVE20%"; // Replace with your actual coupon code

  void copyToClipboard() {
    Clipboard.setData(ClipboardData(text: couponCode));

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(image: AssetImage("assets/images/grocery.jpg"),fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text(
                  "Coupon Code:",
                  style: GoogleFonts.aBeeZee(fontSize:20,color: Colors.black,fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade800,width: 3,style: BorderStyle.solid),
                    color: Colors.grey.shade300
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          couponCode,
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(Icons.copy,size: 25,color: Colors.grey.shade800,),
                          onPressed: copyToClipboard,
                          iconSize: 40,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
