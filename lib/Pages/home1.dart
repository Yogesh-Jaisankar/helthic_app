import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class home1 extends StatelessWidget {
  const home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Goal Weight",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "154.3",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "lbs",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 64),
                  child: Text(
                    "Every pound starts with a ounce, don't forget to keep us updated on your progress.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, height: 1.3),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 82,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "1,200 ",
                              style: TextStyle(
                                fontSize: 16,

                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "Calories of ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: "2,000 ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "Daily Consumed",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              )),
                        ]),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            bottomLeft: Radius.circular(4),
                                          )),
                                    ),
                                  ),
                                  const VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1.2,
                                    width: 2,
                                  ),
                                  Flexible(
                                      flex: 6,
                                      child: Container(
                                        color: Colors.green,
                                      )),
                                  const VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1.2,
                                    width: 2,
                                  ),
                                  Flexible(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.amber,
                                      )),
                                  const VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1.2,
                                    width: 2,
                                  ),
                                  Flexible(flex: 10, child: Container()),
                                ],
                              ),
                            ),
                          )),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 6,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Carbs",
                            style: TextStyle(
                                color: Colors.white.withOpacity(
                                  0.4,
                                ),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const CircleAvatar(
                            radius: 6,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Fat",
                            style: TextStyle(
                                color: Colors.white.withOpacity(
                                  0.4,
                                ),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const CircleAvatar(
                            radius: 6,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Protein",
                            style: TextStyle(
                                color: Colors.white.withOpacity(
                                  0.4,
                                ),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Protein",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "You need 30g more to complete the day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                      )),
                                ),
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                thickness: 1.2,
                                width: 2,
                              ),
                              Flexible(flex: 2, child: Container()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Carbs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "You need 23g more to complete the day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 12,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                      )),
                                ),
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                thickness: 1.2,
                                width: 2,
                              ),
                              Flexible(flex: 2, child: Container()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Fat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "You need 30g more to complete the day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                      )),
                                ),
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                thickness: 1.2,
                                width: 2,
                              ),
                              Flexible(flex: 6, child: Container()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 GestureDetector(
                   onTap: (){
                     showToast("Diet Added",context:context);
                   },
                   child: Container(
                    decoration: BoxDecoration(
                        color: HexColor("6BDE84"),
                        borderRadius: BorderRadius.circular(13)
                    ),
                    margin: EdgeInsets.all(20),
                    height: 40,
                    width: double.infinity,
                    //color: HexColor("6BDE84"),
                    child: const Center(
                      child: Text("ADD DIET",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                ),
                 ),
              ],
            ),
          ),
        ),);
  }
}
