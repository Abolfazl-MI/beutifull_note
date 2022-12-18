import 'dart:ui';

import 'package:beutifull_note/gen/assets.gen.dart';
import 'package:beutifull_note/view/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Get.offNamed(signupScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.icons.googleFirebaseConsole),
          SizedBox(height: 20,),
          Text(
            'Beutifull Note',
            style: GoogleFonts.ubuntuMono(
              textStyle: TextStyle(
                fontSize: 30,      
              )
            ),
          )
        ],
      ),
    ));
  }
}
