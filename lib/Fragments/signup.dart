import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helthic/Fragments/helper.dart';
import 'package:helthic/Fragments/signin.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    authservice authService = authservice();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        child: ListView(
          children: [
            Lottie.asset("assets/lottie/security.json",height: 200),
            Text(
              "STEP INTO HEALTHIC LIFE",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont("Kanit",fontSize: 25,color: HexColor("#6BDE84"),fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            TextField(
              controller: authService.name,
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: authService.email,
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: authService.password,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child:
                TextField(
                  keyboardType: TextInputType.number,
                  controller: authService.age,
                  decoration: InputDecoration(
                      labelText: "Age",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),
                ),
                 SizedBox(width: 5),
                 Flexible(child: TextField(
                   keyboardType: TextInputType.number,
                  controller: authService.height,
                  decoration: InputDecoration(
                      labelText: "Height in cms",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),)
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child:TextField(
                  keyboardType: TextInputType.number,
                  controller: authService.weight,
                  decoration: InputDecoration(
                      labelText: "Weight in Kgs",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),
                ),
                SizedBox(width: 5),
                Flexible(child:TextField(
                  controller: authService.gender,
                  decoration: InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ) )
              ],
            ),
            GestureDetector(
              onTap: (){
              if(authService.email != "" && authService.password != ""){
                authService.RegisterUser(context);
                showToast("Login Using You Credentials",context:context);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor("6BDE84"),
                    borderRadius: BorderRadius.circular(13)
                ),
                margin: EdgeInsets.all(15),
                height: 40,
                width: double.infinity,
                //color: HexColor("6BDE84"),
                child: const Center(
                  child: Text("Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
              },
              child: Container(
                child: Text(
                  "Already have a account? Login.️",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont("Kanit",fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
