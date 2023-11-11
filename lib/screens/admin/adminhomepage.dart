import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerygo/screens/admin/addproducts.dart';
import 'package:grocerygo/screens/admin/viewproducts.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProducts())),
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade800,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Text(
                          "Add Products",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewProducts())),
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Text(
                          "View all Products",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade800,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(
                      child: Text(
                        "View all Orders",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade800,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(
                      child: Text(
                        "View all Payments",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade300),
                      ),
                    ),
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
