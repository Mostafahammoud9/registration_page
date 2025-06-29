import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registration_page/Core/Network/DioClient.dart';
import 'package:registration_page/Models/User.dart';


class Registrationcontroller extends GetxController{


TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController phone = TextEditingController();


void register(){
  User user = User(
    name: name.text,
    email: email.text,
    password: password.text,
    phone: phone.text,
  );
  String requestBody = user.toJson();
  print(requestBody);

  var post = DioCLient().getInstance().post('/register' , data: requestBody);
  post.then((response){
    if (response.statusCode == 200){
      print("registration success : ${response.data}");
      Get.snackbar("success","Registration successful ");
      }
       else {
        print("registration failed : ${response.data}");
        Get.snackbar("failed","Registration failed ");
        }
      }
        ).catchError((error) {
          print("error occured : $error");
          Get.snackbar("error", "an error occured during registration");
          });
          }


}