import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:helthic/Fragments/helper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    authservice authService = authservice();
    return Scaffold(
      body: Stack(
          children: [
            ListView(
              children: [
                Lottie.asset("assets/lottie/avatar.json",
                  width: 200,
                  height: 200,
                  //fit: BoxFit.fill,
                ),
                StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("user").snapshots(),
                    builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                  if(snapshot.hasData){
                    return Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: ListView.builder(
                              shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context,i){
                                  var data = snapshot.data!.docs[i];
                              return Column(
                                children: [
                                  Text(data['name'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 10),
                                  Text(data['email'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 10),
                                  Text(data['age'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 10),
                                  Text(data['gender'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 10),
                                  Text(data['height'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(height: 10),
                                  Text(data['weight'],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    );
                  }else{
                    return CircularProgressIndicator();
                  }
                }),
                GestureDetector(
                  onTap: (){
                    showToast("You have been signed out",context:context);
                    authservice AuthService = authservice();
                    authService.logOutUser(context);
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
                      child: Text("Sign Out",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}