import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helthic/Fragments/signup.dart';
import 'package:helthic/Fragments/helper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    authservice authService = authservice();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        child: ListView(
          children: [
            Lottie.asset("assets/lottie/security.json"),
            Text(
              "STEP INTO HEALTHIC LIFE",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont("Kanit",fontSize: 25,color: HexColor("#6BDE84"),fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            TextField(
              controller:authService.email,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller:authService.password,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 20),
           GestureDetector(
             onTap: (){
              if(authService.email != "" && authService.password != ""){
              authService.loginUser(context);
              }
             },
             child: Container(
               decoration: BoxDecoration(
                   color: HexColor("6BDE84"),
                 borderRadius: BorderRadius.circular(13)
               ),
               margin: EdgeInsets.all(40),
               height: 40,
               width: double.infinity,
               //color: HexColor("6BDE84"),
               child: const Center(
                 child: Text("LOGIN",
                 textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),
           ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Don't have a account? Register.️",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont("Kanit",fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),
                ),
              ),
            ),
              SizedBox(height: 20,),
            Text(
              "Terms and Conditions©️",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont("Kanit",fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
