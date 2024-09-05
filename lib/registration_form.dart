import 'package:flutter/material.dart';
// import 'package:functional_textfield/functional_textfield.dart';

// ignore: must_be_immutable
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
        centerTitle: true,
        title: const Text("Registration Form",
          style: TextStyle(fontSize: 30,color: Colors.blue),
        ),
      ),
      body: SizedBox(
        width: 800,

       child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          //name

          // FunTextField(controller: nameController, lable: "Name", hint: "Name"),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
                enabled: true,
                hintText: "Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                prefixIconColor: Colors.blue),
          ),
          const SizedBox(
            height: 20,
          ),
          // No

          // FunTextField(
          //   controller: noController,
          //   lable: "Phone",
          //   hint: "Phone",
          //   forPhoneNo: true,
          // ),
          TextField(
            controller: noController,
            decoration: const InputDecoration(
                prefixStyle: TextStyle(color: Colors.black),
                prefixText: "+91",
                prefixIcon: Icon(Icons.call),
                prefixIconColor: Colors.blue,
                hintText: "Phone Number"),
          ),
          const SizedBox(
            height: 20,
          ),
          //email
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: Colors.blue,
                hintText: "Email"),
          ),
          const SizedBox(
            height: 20,
          ),
          // Address
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.location_city_outlined),
                prefixIconColor: Colors.blue,
                hintText: "Address"),
          ),
          const SizedBox(
            height: 20,
          ),
          // Registration btn
          TextButton(
              onPressed: () {
                Map<String, String> data = {
                  "name": nameController.text.toString(),
                  "no": noController.text.toString(),
                  "email": emailController.text.toString(),
                  "Address": addressController.text.toString(),
                };

                print(data);
              },
              child: const Text(
                "Register Now",
                style: TextStyle(color: Colors.blue,
                    fontSize: 20,
                    // backgroundColor: Colors.yellow
                ),
              ))
        ],
      ),
      ),
    );
  }
}
