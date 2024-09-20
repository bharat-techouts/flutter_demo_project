import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 10.0,
        title: const Text('5minutes flutter', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: const [
          Icon(Icons.location_on_outlined, color: Colors.white,),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: mockuserData(),
      //   ),
      // ),
          body: ListView(children: mockuserData(),),
    );
  }

Widget _userItem() {
  return Row(
    children: [
      Image.asset(
        'assets/images/instaIcon.png',
        width: 30,
        height: 30,
      ),
      const SizedBox(
        width: 15,
      ),
      const Text('Mounica vanga'),
    ],
  );
}

List<Widget> mockuserData() {
  List<Widget> users = [];
    for(var i = 0; i < 100; i++) {
      users.add(_userItem());
    }
  return users;
}

}