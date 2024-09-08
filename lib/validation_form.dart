import 'package:flutter/material.dart';
import "package:functional_textfield/functional_textfield.dart";
class Registration extends StatelessWidget {
  Registration({super.key});
  var nameController = TextEditingController();
  var noController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration "),
      ),
      body: Column(
        children: [SizedBox(
          height: 20,
        ),
          //Username

          FunTextField(controller: nameController, lable: "Name", hint: "Name"),
          SizedBox(
            height: 20,
          ),
          // Phone Number

          FunTextField(controller: noController, lable: "Phone", hint: "Phone",forPhoneNo: true,),
          SizedBox(
            height: 20,
          ),
          //email
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Email"
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Address
          TextField(
            controller: addressController,
            decoration: InputDecoration(
                hintText: "Address"
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Registration btn
          ElevatedButton(onPressed: (){

            Map<String, String> data = {
              "name": nameController.text.toString(),
              "no": noController.text.toString(),
              "email": emailController.text.toString(),
              "Address": addressController.text.toString(),
            };
            print(data);

          }, child: Text("Registration"))
        ],
      ),
    ) ;
  }
}