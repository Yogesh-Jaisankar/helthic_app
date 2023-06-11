
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helthic/Fragments/signin.dart';
import 'package:helthic/home.dart';

class authservice{
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController name = TextEditingController();
  final firestore = FirebaseFirestore.instance;

  void loginUser (context)async{
    try{
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Center(
          child: CircularProgressIndicator(),
          ),
        );
      });
      await auth.signInWithEmailAndPassword(email: email.text, password: password.text)
          .then((value)=> {
        print("user is lgged in"),
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()),
      (route) => false)
      });
    }catch(e){
      Navigator.pop(context);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Error Message"),
          content: Text(e.toString()),
        );
      });
    }
  }

  void RegisterUser (context)async{
    try{
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
      await auth.createUserWithEmailAndPassword(email: email.text, password: password.text).then((value)=>{
        print("User is registered"),
        firestore.collection("user").add({
          "email" : "Email: "+ email.text,
          "password": "Password: " + password.text,
          "uid":auth.currentUser!.uid,
          "height":"Age: "+age.text,
          "weight":"Weight: "+weight.text,
          "age":"Height: "+height.text,
          "gender":"Gender: "+gender.text,
          "name":"Name: "+name.text,
        }),
        Navigator.push(context, MaterialPageRoute(builder: (c)=>SignIn())),

      });
    }catch(e){
      Navigator.pop(context);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Error Message"),
          content: Text(e.toString()),
        );
      });
    }
  }


  void logOutUser(context)async{
    await auth.signOut();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (C)=>SignIn()), (route) => false);
  }
}