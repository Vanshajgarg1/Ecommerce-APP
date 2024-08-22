import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';
import 'package:flutter_basic/models/cart.dart';
import 'package:flutter_basic/pages/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create : (Context)=> Cart(),
    builder :(context , child)=> const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intropage(),
    ),
    );
  }
}
