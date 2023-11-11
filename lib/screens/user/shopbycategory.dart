import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/screens/user/beverages.dart';
import 'package:grocerygo/screens/user/candies.dart';
import 'package:grocerygo/screens/user/dairy-products.dart';
import 'package:grocerygo/screens/user/desserts.dart';
import 'package:grocerygo/screens/user/fruits.dart';
import 'package:grocerygo/screens/user/meat.dart';
import 'package:grocerygo/screens/user/seafood.dart';
import 'package:grocerygo/screens/user/vegetables.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key});

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
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
                  child: Text("Shop by category",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Fruits())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/fruits.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Fruits",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Desserts())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/pastry.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("desserts",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Vegetables())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/vegitables.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Vegetables",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Beverages())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/beverages.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Beverages",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DairyProducts())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/dairy products.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Dairy",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Candies())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 200,
                        width: 175,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/candy.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text("Candies",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Meat())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/meat.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Meat",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 200,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SeaFood())),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(image: AssetImage("assets/images/seafood.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Text("Sea food",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
