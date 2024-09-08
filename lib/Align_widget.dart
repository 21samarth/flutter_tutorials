import 'package:flutter/material.dart';
class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container (
              color: Colors.blue,
              width: 500,
              height: 500,
              child : Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: (){print("Hello");},
                  child: Text("Alignment Test")),
            ),
          ),
        ],
      ),
    );
  }
}
