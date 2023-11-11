import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/common/loginpage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
