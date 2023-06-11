import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:hexcolor/hexcolor.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50)
              ),
                color: HexColor("#00A36C"),
              ),
            child:  Stack(
                  children: [
                    Positioned(
                        top: 50,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)
                            )
                          ),
                        )),
                    Positioned(
                        top: 100,
                        left: 20,
                        child: Text("Workout Plans",style: TextStyle(
                            fontSize: 20,
                            color: HexColor("#00A36C"),
                            fontWeight: FontWeight.bold),))
                  ],
),
            ),

            SizedBox(height: 20),
            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                      left: 20,
                      child: Container(
                        margin: EdgeInsets.only(right: 14),
                        child: Stack(
                          children: [
                            Image(image: AssetImage("assets/lottie/wl.jpeg"),fit: BoxFit
                              .cover,
                              width: 380,
                            height: 250,),

                            GestureDetector(
                              onTap: (){
                                showToast("On click opens  youtube",context:context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 200,
                                width: 380,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black45
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                  "Power Building",style: TextStyle( color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),),
                            SizedBox(height: 5),

                          ],
                        ),
                      ),

                  ),
                 ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Container(
                      margin: EdgeInsets.only(right: 14),
                      child: Stack(
                        children: [
                          Image(image: AssetImage("assets/lottie/home1.jpeg"),fit: BoxFit
                              .cover,
                            width: 380,
                            height: 250,),

                          GestureDetector(
                            onTap: (){
                              showToast("On click opens  youtube",context:context);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 200,
                                width: 380,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black45
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                                "Home Workout",style: TextStyle( color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),),

                        ],
                      ),
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Container(
                      margin: EdgeInsets.only(right: 14),
                      child: Stack(
                        children: [
                          Image(image: AssetImage("assets/lottie/yoga.jpeg"),fit: BoxFit
                              .cover,
                            height: 250,
                          width: 380,
                          ),

                          GestureDetector(
                            onTap: (){
                              showToast("On click opens  youtube",context:context);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 200,
                                width: 380,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black45
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                                "Yoga",style: TextStyle( color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),),

                        ],
                      ),
                    ),

                  ),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
