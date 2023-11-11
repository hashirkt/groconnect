import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
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
                      Text("Vegetables",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
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
                Center(
                  child: Container(
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/tomatoes.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tomatoes",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹25",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/cauliflower.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cauliflower",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/carrot.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Carrot",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹30",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/cucumber.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cucumber",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹25",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/coconut.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Coconut",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹15",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/ginger.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ginger",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹20",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/red-onion.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Red Onion",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹30",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                image: DecorationImage(image: AssetImage("assets/images/vegetables/white-onion.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("White Onion",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1kg. ₹25",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
