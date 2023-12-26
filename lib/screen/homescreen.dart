import 'package:flutter/material.dart';
import 'package:test1/screen/productscreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return productscreen();
          })
          );
        },child: Text("Get products",style: TextStyle(
          fontSize: 22,
        ),),),
      ),
    );
  }
}