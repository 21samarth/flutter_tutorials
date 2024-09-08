import 'package:flutter/material.dart';


class TaskOne extends StatelessWidget {
  const TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:SizedBox(
                width:400,
                height:600,
                child:SingleChildScrollView(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS005F7jwdmqTooeo-ouAfFY35-67pDwosSPQ&s",
                            height: 200,
                            fit: BoxFit.fitHeight
                        ),
                        SizedBox(height: 20,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dewas Sweet Lake"),
                                Text("Dewas, Madhya Predesh",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                                Icons.star,
                                color:Colors.amber,
                                size: 16
                            ),
                            Text("4.1"),
                          ],
                        ),
                        SizedBox(height: 20,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(color:Colors.blue),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.place,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Route",
                                  style: TextStyle(color:Colors.blue),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(color:Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        const Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above   level, it is one of the larger Alpine Lakes. A gondolaride from Kandersteg, followed by a half-hour walkthrough pastures and pine forest, leads you to thelake, which warms to 20 degrees Celsius in thesummer. Activities enjoyed here include rowing, andriding the summer toboggan run."),

                      ],
                    )
                )
            )

        )

    );
  }
}