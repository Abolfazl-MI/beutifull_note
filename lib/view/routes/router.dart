
import 'package:beutifull_note/view/screens/authentication/login_screen.dart';
import 'package:beutifull_note/view/screens/authentication/signup_screen.dart';
import 'package:beutifull_note/view/screens/home/home_screen.dart';
import 'package:beutifull_note/view/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

const String loginScreen='/login';
const String signupScreen='/signupScreen';
const String home='/home';
const String splashScreen='/';

List<GetPage> pages=[
  GetPage(name: splashScreen, page: ()=>const SplashScreen()), 
  GetPage(name: signupScreen, page: ()=>const SignUpScreen()),
  GetPage(name: loginScreen, page: ()=>const LoginScreen()), 
  GetPage(name: home, page: ()=>const HomeScreen()), 
  
];