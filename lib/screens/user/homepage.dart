import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';
import 'package:grocerygo/screens/user/fruits.dart';
import 'package:grocerygo/screens/user/offercoupon.dart';
import 'package:grocerygo/screens/user/shopbycategory.dart';
import 'package:grocerygo/screens/user/vegetables.dart';
import 'package:grocerygo/services/productservices.dart';
import 'package:grocerygo/services/userservices.dart';

import '../../constants/data.dart';
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
          padding: EdgeInsets.all(20),
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
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemExtent: 120,

                      itemCount: items.length,
                      itemBuilder: (context,index){
                      var item= items[index];
                      print(item['image']);
                      return Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Fruits(
                              category: item['name'],
                            ))),
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 80,

                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('${item['image']}'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("${item['name']}",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                        ],
                      );
                      }
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
               Container(
                 height: 260,
                 child: FutureBuilder(
                     future: ProductServices().getProductsByCategory('fruits'),
                     builder: (context,snapshot){
                       if(snapshot.hasData){
                         return ListView.builder(
                             shrinkWrap: true,
                             scrollDirection: Axis.horizontal,

                             itemCount:snapshot.data!.length ,
                             itemBuilder: (context,index){
                               var product=snapshot.data![index] ;
                               print(product);
                               return Container(
                                 height: 260,
                                 width: 230,
                                 margin: EdgeInsets.only(right: 10),
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
                                         image: DecorationImage(image: AssetImage("assets/images/vegetables.png"),fit: BoxFit.cover)
                                       ),
                                     ),
                                     Padding(padding: const EdgeInsets.all(10),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("${product['name']} ₹${product['price']}",style: GoogleFonts.aBeeZee(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w800),),
                                           InkWell(
                                             onTap: (){

                                               //todoo:add to cart
                                             },
                                             child: CircleAvatar(
                                               backgroundColor: Colors.deepOrange,
                                               radius: 15,
                                               child: Icon(Icons.add,color: Colors.white,),
                                             ),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               );
                             }
                         );
                       }
                       return Center(
                         child: CircularProgressIndicator(),
                       );
                     },
                 ),
               )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
