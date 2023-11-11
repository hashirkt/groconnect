import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Beverages",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.shopping_cart,color: Colors.grey.shade800,size: 30,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 6),
                      child: TextFormField(
                        cursorColor: Colors.grey.shade700,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: Icon(Icons.search,color: Colors.grey.shade700,),
                          hintText: "search item",
                          hintStyle: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.grey.shade700),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/7up-can.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("7up can",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/7up-bottle.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("7up",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("750ml ₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/cocacola-can.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cocacola can",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/cocacola-bottle.jpg"))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CocaCola",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("750ml ₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/frooti-can.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mango Frooti",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹10",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/frooti-bottle.png"))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mango Frooti",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("600ml ₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/pepsi-can.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pepsi can",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/pepsi-bottle.jpg"))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pepsi",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("750ml ₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/mountaindew-can.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("MountainDew",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/beverages/mountaindew-bottle.jpg"))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("MountainDew",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("750ml ₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: 15,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
