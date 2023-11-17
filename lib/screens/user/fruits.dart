import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/services/productservices.dart';

class Fruits extends StatefulWidget {

  final String? category;
  const Fruits({super.key,this.category});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
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
                      Text("Fresh Fruits",style: GoogleFonts.aBeeZee(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
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

                Expanded(
                    child: FutureBuilder(
                      future: ProductServices().getProductsByCategory(widget.category!.toLowerCase().toString()),
                      builder: (context,snapshot){
                        if(snapshot.hasData && snapshot.data!.length==0){
                          return Center(
                            child: Text("No Products"),
                          );
                        }
                        if(snapshot.hasData){
                          return GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 2/3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10
                              ),

                              itemCount: snapshot.data!.length,
                              itemBuilder: (context , index){
                                var product = snapshot.data![index];
                                print(product);
                                return Container(
                                  height: 300,
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
                                            Text("${product['name']}", style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w800),),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    )
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
