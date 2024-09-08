import 'package:flutter/material.dart';
import 'package:flutter_tutorials/basic_layout.dart';
import './registration_form.dart';
import './login.dart';
import './Align_widget.dart';
void main() {runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/": (context)=>AlignWidget(),
        "/login" : (context)=>Login(),
        "/Registration" : (context)=>Registration(),
        "/home" : (context)=> const TaskOne()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Login(),
    );
  }
}