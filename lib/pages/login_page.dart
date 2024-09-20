import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: 1000,
        width: 300,
        color: Colors.amber,
      ), 
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
            children: [
              const Spacer(),
              const Text('Hello, Welcome Back Bharat', style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: String.fromEnvironment(""),
              ),),
              const SizedBox(height: 8),
              const Text('Login to continue', style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: 'username',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'password',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(onPressed: () {
                  print('ewdfewfewfwe');
                }, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text('Forgot Password ?', style: TextStyle(fontSize: 14),)),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  //   return const HomePage();
                  // },
                  // ));
                  Navigator.of(context).pushReplacementNamed('/home');
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                ),              
                child: const Text('Log In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold) )),
              ),
              const SizedBox(height: 80,),
              const Text('or sign-in with', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 12),
              SizedBox(
                height: 48,
                child: ElevatedButton(onPressed: () {
                        
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/instaIcon.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 12),
                    const Text('Login in with Insta'),
                  ],
                )),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 48,
                child: ElevatedButton(onPressed: () {
                        
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/linkedIn.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 12),
                    const Text('Login in with LinkedIn'),
                  ],
                )),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    const Text(
                      "Dont't have an account?", 
                       style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){

                    }, 
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.amber,
                    ),
                    child: const Text(
                      'Sign Up', 
                      style: TextStyle(decoration: TextDecoration.underline))),
                  ],
                ),
              ),
              const Spacer(),
            ],
        ),
      ),
    );
  }
}