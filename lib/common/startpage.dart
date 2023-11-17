import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';
import 'package:grocerygo/screens/admin/adminhomepage.dart';
import 'package:grocerygo/screens/user/Bottomnavigationbar.dart';
import 'package:grocerygo/services/userservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {


  UserServices _userServices = UserServices();

  Future<void> _checkLoginStatus() async {
    bool isLoggedIn = await _userServices.isLoggedin();
    print(isLoggedIn);
    if (!isLoggedIn) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {

      SharedPreferences _pref = await SharedPreferences.getInstance();

      var type = _pref.getString('usertype');

      if(type=='user'){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationBarUser()),
                (route) => false);
      }else if(type=='admin'){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AdminDashboard()),
                (route) => false);
      }
    }
  }

  @override
  void initState() {
    _checkLoginStatus();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "GroConnect",
                  style: GoogleFonts.acme(
                      fontSize: 44,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(
                      text: "Welcome to ",
                      style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: "GroConnect",
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 18,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        TextSpan(
                          text: ", Lets shop!",
                          style: GoogleFonts.openSans(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Image(image: AssetImage("assets/images/splash_2.png")),
                SizedBox(
                  height: 130,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        fixedSize: Size(350, 60)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Center(
                        child: Text(
                      "Continue",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontSize: 20),
                    ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
