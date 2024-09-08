import 'package:flutter/material.dart';
import './counter_application.dart';
class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> userkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: SizedBox(
          width:500,
          height: 800,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form( key: userkey ,child: Column(children: [
              // TextFormField(
              //   decoration: InputDecoration(labelText: "UserNameTry"),
              //   validator: (value){
              //     if(value==null || value.isEmpty){
              //       return "please enter username";
              //     }
              //     return null;
              //   },
              // ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.blue
                ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter username";
                    }
                    return null;
                  }
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration:InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.security),
                    prefixIconColor: Colors.blue
                ) ,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter Password";
                    }
                    return null;
                  }
              ),
            ],)),




            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(userkey.currentState!.validate()){
                Navigator.pushNamed(context, "/home");
              }

            }, child: Text("Login"))
          ],
                  ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}