import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(

                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.grey,),
                      Expanded(child: Center(child: Text("Profile Page",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w600),))),
                    ],
                  ),
                  SizedBox(height: 100,),

                  Text("Edit Profile",style: GoogleFonts.aBeeZee(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                  
                  SizedBox(height: 40,),
                  InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 55,
                      child: Icon(Icons.photo,size: 35,),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    //controller: emailcontroller,
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
                  SizedBox(height: 10,),
                  TextFormField(
                    //controller: emailcontroller,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Name",
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
                  SizedBox(height: 10,),
                  TextFormField(
                    //controller: emailcontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone number",
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
                  
                  SizedBox(height: 50,),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Center(child: Text("Continue",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20),)),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
