import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';
import 'package:grocerygo/models/usermodel.dart';
import 'package:grocerygo/services/userservices.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmcontroller=TextEditingController();
  bool show=true;
  bool show2=true;
  final LoginKey =GlobalKey<FormState>();

  UserServices _userServices =UserServices();
  bool _loading = false;
  @override
  void dispose() {
   emailcontroller.dispose();
   namecontroller.dispose();
   passwordcontroller.dispose();
   confirmcontroller.dispose();


    super.dispose();
  }

  void register() async{
    setState(() {
      _loading=true;
    });
    UserModel user = UserModel(
      name: namecontroller.text,
      email: emailcontroller.text,
      password: passwordcontroller.text,
      status: true,
      usertype: "user",
      createdAt: DateTime.now()
    );
    try {
      await _userServices.RegisterUser(user).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage())));
      }catch(e){
      print(e);
      setState(() {
        _loading=false;
      });
      List err = e.toString().split("]");
      print("Hello $err");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err[1].toString())));
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: LoginKey,
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(

                          children: [
                            IconButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                                icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                            Expanded(child: Center(child: Text("Sign Up",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w600),))),
                          ],
                        ),
                        SizedBox(height: 50,),

                        Text("Register Account",style: GoogleFonts.aBeeZee(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("Complete your details or continue\nwith social media",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                        SizedBox(height: 70,),
                        TextFormField(
                          controller: namecontroller,
                          validator: (value){
                            if(value!.isEmpty){
                              return "Field is Mandatory";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "Enter your name",
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
                          controller: emailcontroller,
                          validator: (value){
                            if(value!.isEmpty){
                              return "Field is Mandatory";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your email",
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
                          obscureText: show,
                          obscuringCharacter: "*",
                          controller: passwordcontroller,
                          validator: (value){
                            if(value!.isEmpty || value!.length<8){
                              return "FIeld is mandatory and required minimum of 8 characters";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                show=!show;
                              });
                            },
                                icon: show == true ?Icon(Icons.visibility_off_outlined,color: Colors.grey,): Icon(Icons.visibility_outlined,color: Colors.grey,),
                            ),
                            hintText: "Enter your password",
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
                          obscureText: show2,
                          obscuringCharacter: "*",
                          controller: confirmcontroller,
                          validator: (value){
                            if(value!.isEmpty || value!.length<8){
                              return "Field is mandatory and required minimum of 8 characters";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                show2=!show2;
                              });
                            },
                                icon: show2 == true?Icon(Icons.visibility_off_outlined,color: Colors.grey,): Icon(Icons.visibility_outlined,color: Colors.grey,),),
                            hintText: "Confirm password",
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
                              if(passwordcontroller.text == confirmcontroller.text){
                                if(LoginKey.currentState!.validate()){
                                  register();
                                }
                              }
                              },
                            child: Center(
                                child: Text(
                                  "Register",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white, fontSize: 20),
                                ))),
                        // InkWell(
                        //   onTap: (){
                        //     if(passwordcontroller.text == confirmcontroller.text){
                        //       if(LoginKey.currentState!.validate()){
                        //         RegisterUser();
                        //       }else{
                        //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter all fields")));
                        //       }
                        //     }
                        //   },
                        //   child: Container(
                        //     height: 60,
                        //     width: 350,
                        //     decoration: BoxDecoration(
                        //         color: Colors.deepOrange,
                        //         borderRadius: BorderRadius.circular(18)
                        //     ),
                        //     child: Center(child: Text("Register",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20),)),
                        //   ),
                        // ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())),
                          child: RichText(text: TextSpan(
                              text: "Already have an account!? ",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.grey.shade600),
                              children: [TextSpan(
                                  text: "Sign in",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.deepOrange)
                              )]
                          )),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 0,
                left: 0,
                right: 0,
                child: Visibility(
                    visible: _loading,
                    child: Center(
                      child: CircularProgressIndicator(),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
