

import 'package:beutifull_note/view/constants/solid_colors.dart';
import 'package:beutifull_note/view/constants/text_styles.dart';
import 'package:beutifull_note/view/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome👋',
                      style: kTextBoldStyle.copyWith(
                          fontSize: 35, color: darkBlue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sing in to continue',
                      style: kTextBaseStyle.copyWith(
                          color: darkBlue, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _textFeild(
                        usernameController,
                        'userName',
                        const Icon(
                          Icons.person,
                          color: orangeShade,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _textFeild(
                        emailController,
                        'Email',
                        Icon(
                          Icons.email,
                          color: orangeShade,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _textFeild(passwordController, "password",
                        Icon(Icons.lock_open, color: orangeShade))
                  ],
                ),
              ),
              SizedBox(height: 20,), 
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 60,
              //   decoration: BoxDecoration(
              //   color: darkBlue,
              //   borderRadius: BorderRadius.circular(12)
              //   ),
              //   child: Center(
              //     child: 
              //       Text('SIGNUP', style: kTextBaseStyle.copyWith(color: greyShade),)
              //     ,
              //   ),
              // ), 
               SizedBox(height: 20,), 
              InkWell(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                  color: darkBlue,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: 
                      Text('Signup', style:TextStyle(color: greyShade, fontSize: 25),)
                    ,
                  ),
                ),
              ), 
               SizedBox(height: 10,), 

              Center(
                child: Text('Or', style:TextStyle(color: orangeShade, fontSize: 25),
                )), 

               SizedBox(height: 10,), 
               InkWell(
                onTap: ()=>Get.offNamed(loginScreen),
                 child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                  color: greyShade,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: 
                      Text('Login', style:TextStyle(color: orangeShade, fontSize: 25),)
                    ,
                  ),
                             ),
               ), 
            ],
          ),
        ),
      ),
    );
  }

  TextFormField _textFeild(
      TextEditingController controller, String labelText, Icon prefixIcon) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: greyShade,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: greyShade)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: greyShade)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: greyShade)),
          labelText: labelText,
          labelStyle: TextStyle(color: darkBlue),
          prefixIcon: prefixIcon),
    );
  }
}
