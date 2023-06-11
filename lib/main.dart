import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helthic/Fragments/signin.dart';
import 'package:helthic/home.dart';
import 'package:hexcolor/hexcolor.dart';
final auth = FirebaseAuth.instance;

 main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'HEALTHIC' ,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Text("HEALTHIC",

        style: GoogleFonts.getFont("Raleway",fontSize: 50,color: HexColor("#6BDE84"),fontWeight: FontWeight.w500),
        ),

        nextScreen: auth.currentUser==null?SignIn():Home(),
        splashTransition: SplashTransition.fadeTransition,
        //pageTransitionType: PageTransitionType.,
        backgroundColor: Colors.white,
      ),

    );
  }
}

