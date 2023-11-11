import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Candies extends StatefulWidget {
  const Candies({super.key});

  @override
  State<Candies> createState() => _CandiesState();
}

class _CandiesState extends State<Candies> {
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
                      Text("Chocolates and Candies",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                      Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.shopping_cart,color: Colors.grey.shade800,size: 30,),
                        ),
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/dairy-milk.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dairy Milk",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/galaxy.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Galaxy",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹40",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/hershey's.png"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hershey's",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹50",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                            decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/kitkat.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("KitKat",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹25",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/mars.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mars",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹30",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                                image: DecorationImage(image: AssetImage("assets/images/candies/snickers.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Snickers",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹30",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
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
