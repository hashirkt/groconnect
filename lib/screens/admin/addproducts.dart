import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/models/productmodel.dart';
import 'package:grocerygo/services/productservices.dart';
import 'package:uuid/uuid.dart';

class EditProducts extends StatefulWidget {
 EditProducts({super.key});

  @override
  State<EditProducts> createState() => _EditProductsState();

}

class _EditProductsState extends State<EditProducts> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController imagecontroller= TextEditingController();
  TextEditingController quantitycontroller= TextEditingController();
  TextEditingController pricecontroller= TextEditingController();
  TextEditingController categorycontroller =TextEditingController();
  final GlobalKey<FormState> _productKey = GlobalKey<FormState>();
  ProductServices productServices = ProductServices();
  var id;

  var uuid=Uuid();


  @override
  void dispose() {
   namecontroller.dispose();
   imagecontroller.dispose();
   quantitycontroller.dispose();
   pricecontroller.dispose();
   categorycontroller.dispose();
    super.dispose();
  }
  void addProduct() async{
print("object");
    id=uuid.v1();
    ProductModel product = ProductModel(
      name: namecontroller.text,
      image: imagecontroller.text,
      quantity: quantitycontroller.text,
      category: categorycontroller.text,
      price: int.parse(pricecontroller.text),
      id: id,
      status: 1
    );

    ProductModel? productdata= await productServices.addProduct(product);

    if(productdata!=null){
      Navigator.pop(context);
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${productdata.id}")));
    }


  }

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
            SizedBox(height: 20,),
            Text(
              "Edit Products",
              style: GoogleFonts.aBeeZee(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade800),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.blueGrey.shade50,
                  ),
                  child: Form(
                      key: _productKey,
                      child: SingleChildScrollView(
                        child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Product image:",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800),),
                              SizedBox(height: 15,),
                              InkWell(
                                onTap: (){

                                },
                                child: CircleAvatar(
                                  radius: 55,
                                  backgroundColor: Colors.blueGrey.shade200,
                                  child: Icon(Icons.photo,size: 35,),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text("Product Name:",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800),),
                              Container(
                                width: 280,
                                height: 70,
                                child:  TextFormField(
                                    controller: namecontroller,
                                    decoration: InputDecoration(
                                      hintText: "Product name",
                                      hintStyle: GoogleFonts.aBeeZee(fontSize: 22,color: Colors.grey.shade700),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey,width: 2,style: BorderStyle.solid
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade600,width: 3,style: BorderStyle.solid
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 10,),
                              Text("Quantity:",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800),),
                              Container(
                                width: 280,
                                height: 70,
                                child:  TextFormField(
                                    controller: quantitycontroller,
                                    decoration: InputDecoration(
                                      hintText: "Quantity",
                                      hintStyle: GoogleFonts.aBeeZee(fontSize: 22,color: Colors.grey.shade700),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey,width: 2,style: BorderStyle.solid
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade600,width: 3,style: BorderStyle.solid
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 10,),
                              Text("Price:",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800),),
                              Container(
                                width: 280,
                                height: 70,
                                child:  TextFormField(
                                    controller: pricecontroller,
                                    decoration: InputDecoration(
                                      hintText: "Price",
                                      hintStyle: GoogleFonts.aBeeZee(fontSize: 22,color: Colors.grey.shade700),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey,width: 2,style: BorderStyle.solid
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade600,width: 3,style: BorderStyle.solid
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 10,),
                              Text("Category:",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800),),
                              Container(
                                width: 280,
                                height: 70,
                                child:  TextFormField(
                                    controller: categorycontroller,
                                    decoration: InputDecoration(
                                      hintText: "Category",
                                      hintStyle: GoogleFonts.aBeeZee(fontSize: 22,color: Colors.grey.shade700),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey,width: 2,style: BorderStyle.solid
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade600,width: 3,style: BorderStyle.solid
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Center(
                        child: InkWell(
                          onTap: (){
                            print("added");
                            addProduct();
                          },

                          child: Container(

                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.blueGrey.shade300,width: 3,style: BorderStyle.solid),
                              color: Colors.blueGrey.shade800
                            ),
                            child: Center(child: Text("Add Product",style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey.shade300),)),

                          ),
                        ),
                        ),
                    ],
                  ),
                      )),
                ),
              ),
            ),
                SizedBox(height: 10,)

              ],
            ),
          )
      ),
    );
  }
}
