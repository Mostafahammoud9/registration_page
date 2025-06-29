import 'package:get/get.dart';
import 'package:registration_page/Controllers/RegistrationController.dart';
import 'package:flutter/material.dart';
import 'package:registration_page/Routes/AppRoute.dart';

class Registration extends GetView<Registrationcontroller> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text("Registration Page")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Better spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
              const Text("Name:"),
              const SizedBox(height: 4),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your full name",
                ),
              ),
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
              const Text("Phone Number:"),
              const SizedBox(height: 4),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your phone number",
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
                    controller.register();
                  },
                  child: const Text("Register"),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: TextButton(onPressed: (){
                  Get.toNamed(AppRoute.login);
                },
                child: const Text("Already have an account? Login"),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  
}