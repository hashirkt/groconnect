import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(

                          children: [
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                                icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                            Expanded(child: Center(child: Text("Forgot Password",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600),))),
                          ],
                        ),
                        SizedBox(height: 100,),

                        Text("Forgot Password!?",style: GoogleFonts.aBeeZee(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("Enter your email to reset password",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                        SizedBox(height: 100,),
                        TextFormField(
                          controller: emailcontroller,
                          validator: (value){
                            if (value!.isEmpty){
                              return "Field is mandatory";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.grey),
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

                          ),
                        ),
                        SizedBox(height: 80,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                fixedSize: Size(350, 60)),
                            onPressed: () {

                            },
                            child: Center(
                                child: Text(
                                  "Send email",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white, fontSize: 20),
                                ))),
                        SizedBox(height: 20,),

                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
