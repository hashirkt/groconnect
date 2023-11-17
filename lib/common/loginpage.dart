import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/startpage.dart';
import 'package:grocerygo/models/usermodel.dart';
import 'package:grocerygo/screens/admin/bottomnavbar.dart';
import 'package:grocerygo/screens/user/Bottomnavigationbar.dart';
import 'package:grocerygo/screens/user/forgotpassword.dart';
import 'package:grocerygo/common/registrationpage.dart';
import 'package:grocerygo/services/userservices.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool show=true;
  bool _loading = false;
  final loginkey=GlobalKey<FormState>();
  UserServices _userServices=UserServices();
  @override
  void dispose() {
   emailcontroller.dispose();
   passwordcontroller.dispose();
    super.dispose();
  }
  void login() async{
    setState(() {
      _loading = true;
    });

    UserModel user = UserModel(
      email: emailcontroller.text,
      password: passwordcontroller.text
    );
    try{
      DocumentSnapshot snap = await _userServices.login(user);
      print(snap['name']);
      if(snap['usertype']=='user'){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarUser()), (route) => false);
      }
      if(snap['usertype']=='admin'){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBarAdmin()), (route) => false);
      }
      // else if(snap['usertype']=='admin'){
      //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AdminHomePAge()), (route) => false);
      // }
    }
    catch (e){
      print(e);
      setState(() {
        _loading=false;
      });
    }
  }
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
                  child: Form(
                    key: loginkey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(

                            children: [
                              IconButton(onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StartPage()));
                              },
                                  icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                              Expanded(child: Center(child: Text("Sign in",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600),))),
                            ],
                          ),
                          SizedBox(height: 100,),

                          Text("Welcome Back!",style: GoogleFonts.aBeeZee(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Sign in with your email and password",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
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
                          SizedBox(height: 10,),
                          TextFormField(
                            obscureText: show,
                            obscuringCharacter: "*",
                            controller: passwordcontroller,
                            validator: (value){
                              if(value!.isEmpty || value.length<8){
                                return "Field is mandatory and required minimum of 8 characters";
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
                                  icon: show == true?Icon(Icons.visibility_off_outlined,color: Colors.grey,):Icon(Icons.visibility_outlined,color: Colors.grey,)),
                              hintText: "Password",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword())),
                                  child: Text("Forgot password!?",style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey.shade600),)),
                            ],
                          ),
                          SizedBox(height: 80,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                  fixedSize: Size(350, 60)),
                              onPressed: () {
                                if(loginkey.currentState!.validate()){
                                  login();
                                }
                               },
                              child: Center(
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.white, fontSize: 20),
                                  ))),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage())),
                            child: RichText(text: TextSpan(
                              text: "Don't have an account!? ",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.grey.shade600),
                              children: [
                                TextSpan(
                                text: "Sign Up",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.deepOrange)
                              )]
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,0),
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