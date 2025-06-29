import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:registration_page/Controllers/LoginController.dart';
import 'package:registration_page/Routes/AppRoute.dart';

class Login extends GetView<LoginController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text("Login Page")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Better spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 12),
              const Text("Email:"),
              const SizedBox(height: 4),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your email",
                ),
              ),
              const SizedBox(height: 12),
              const Text("Password:"),
              const SizedBox(height: 4),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action when user presses "register"
                  },
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 12, ),
              Center(
                child: TextButton(
                  onPressed: (){
                    Get.toNamed(AppRoute.register );
                  },
                  child: Text(
                    "Don't have an account? Register",
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  ),  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}