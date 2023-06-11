import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black12,
        body: SafeArea(
          child: ListView(
            children: [
              Lottie.asset("assets/lottie/coffee.json"),
              Text(
                "Appreciate me for this\nwonderful work!",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Text(
                "Your small donations will boost me\n to achieve great heights",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                    //color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20),
              Text(
                "Tap the button below and feel free to daonate",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                    //color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: (){
                  launch('https://rzp.io/l/pxChoxl4');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("6BDE84"),
                      borderRadius: BorderRadius.circular(13)
                  ),
                  margin: EdgeInsets.all(15),
                  height: 50,
                  width: double.infinity,
                  //color: HexColor("6BDE84"),
                  child: const Center(
                    child: Text("Donate",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [

                  SizedBox(height: 20),
                  Text(
                    "Terms and conditions applied.©️",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16,
                        //color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

