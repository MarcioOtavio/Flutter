import 'package:flutter/material.dart';
// *********************************
//
// Layout Modelo Básico - STATELESS
//
// *********************************
main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
useMaterial3: true),
home: const HomePage(),
);
}
}
class HomePage extends StatelessWidget {
const HomePage({super.key});

 
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Layout Modelo'),
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
centerTitle: true,
),
body: Row(
        children: [
           Expanded(
            flex: 3,
            child: Container(
               alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                "Texto 1 Texto 1 Texto 1 Texto 1",
                style: TextStyle(fontSize: 22),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
            Expanded(
            flex:7,
             child: Container(
               alignment: Alignment.center,
              color: Colors.green,
              child: Text(
                "Texto 1 Texto 1 Texto 1 Texto 1",
                style: TextStyle(fontSize: 22),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
                     ),
           ), 
        ],
      ),
    );
  }
}
