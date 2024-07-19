import 'package:flutter/material.dart';
import 'package:herbel_products/startscreen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) =>MultiProvider(providers: [],
     
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: foodapp(),
           
           ),
     );
  }
