import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/home_page.dart';
import 'package:new_flutter_project/pages/login_page.dart';
import 'package:new_flutter_project/pages/test_page.dart';
import 'package:new_flutter_project/styles/app_colors.dart';

void main() {
  runApp(const MyLoginWidget());
}

class MyLoginWidget extends StatelessWidget {
  const MyLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Urbanist',
      scaffoldBackgroundColor: AppColors.background
      ),

    initialRoute: ',',
    routes: {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
    },
  );
  }
}
