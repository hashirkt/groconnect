import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';
import 'package:grocerygo/screens/user/beverages.dart';
import 'package:grocerygo/screens/user/candies.dart';
import 'package:grocerygo/screens/user/cartscreen.dart';
import 'package:grocerygo/screens/user/dairy-products.dart';
import 'package:grocerygo/screens/user/fruits.dart';
import 'package:grocerygo/screens/user/meat.dart';
import 'package:grocerygo/screens/user/offercoupon.dart';
import 'package:grocerygo/screens/user/seafood.dart';
import 'package:grocerygo/screens/user/shopbycategory.dart';
import 'package:grocerygo/screens/user/vegetables.dart';
import 'package:grocerygo/services/userservices.dart';

import 'desserts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserServices userServices=UserServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 240,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
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
                    SizedBox(width: 5,),
                    InkWell(
                     // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(cart: ,))),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.shopping_cart,color: Colors.grey.shade800,size: 30,),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: IconButton(onPressed: (){
                        userServices.LogOut();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }, icon: Icon(Icons.logout_outlined,color: Colors.grey.shade800,size: 30,))
                    )
                  ],
                ),
                SizedBox(height: 25,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row  (
                    children: [
                      Container (
                        height: 180,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                            Container(height: 180,
                              width: 155,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/grocery.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                            Container(
                              height: 180,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("Special Offer!!",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.white),),
                                    Text("Get 20% Off",style: GoogleFonts.aBeeZee(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("on groceries",style: GoogleFonts.aBeeZee(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),),
                                    SizedBox(height: 10,),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            elevation: 5,
                                            fixedSize: Size(130, 10)),

                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferCoupon()));
                                        },
                                        child: Center(
                                            child: Text(
                                              "Grab now",
                                              style: GoogleFonts.aBeeZee(
                                                  color: Colors.deepOrange, fontSize: 16,fontWeight: FontWeight.bold),
                                            ))),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                            Container(height: 180,
                              width: 155,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/dairy-products.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                            Container(
                              height: 180,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("Special Offer!!",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.white),),
                                    Text("Get 30% Off",style: GoogleFonts.aBeeZee(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("on dairy products",style: GoogleFonts.aBeeZee(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),),
                                    SizedBox(height: 10,),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            elevation: 5,
                                            fixedSize: Size(130, 10)),

                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferCoupon()));
                                        },
                                        child: Center(
                                            child: Text(
                                              "Grab now",
                                              style: GoogleFonts.aBeeZee(
                                                  color: Colors.deepOrange, fontSize: 16,fontWeight: FontWeight.bold),
                                            ))),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                            Container(height: 180,
                              width: 155,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/fruits2.jpg"),fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                            Container(
                              height: 180,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("Special Offer!!",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.white),),
                                    Text("Get 25% Off",style: GoogleFonts.aBeeZee(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("on fruits",style: GoogleFonts.aBeeZee(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),),
                                    SizedBox(height: 10,),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            elevation: 5,
                                            fixedSize: Size(130, 10)),

                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferCoupon()));
                                        },
                                        child: Center(
                                            child: Text(
                                              "Grab now",
                                              style: GoogleFonts.aBeeZee(
                                                  color: Colors.deepOrange, fontSize: 16,fontWeight: FontWeight.bold),
                                            ))),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shop by category",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                      InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopByCategory())),
                          child: Text("View all",style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey.shade600),))
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Fruits())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/fruits.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Fruits",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Desserts())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/pastry.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Desserts",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Vegetables())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/vegitables.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Vegetables",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Beverages())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/beverages.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Beverages",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DairyProducts())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/dairy products.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Dairy",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Candies())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/candy.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Candies",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Meat())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/meat.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Meat",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SeaFood())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/seafood.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Seafoods",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vegetables",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                      InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Vegetables())),
                          child: Text("View all",style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey.shade600),))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 260,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              width: 230,
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
                                        child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),
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
                        height: 260,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              width: 230,
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
                      SizedBox(width: 10,),
                      Container(
                        height: 260,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              width: 230,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/vegetables/carrot.png",),fit: BoxFit.cover)
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
                        height: 260,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              width: 230,
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



                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
