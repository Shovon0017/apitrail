import 'dart:developer';

import 'package:api_project/api%20controller/national.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: const Text("National",style: TextStyle(fontSize: 40),),
        centerTitle: true,
      ),
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              var d= await National.national();
              log("${d['country'][4]['country_id']}");
            }, child: const Text("Call Api",style: TextStyle(fontSize: 50,color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
