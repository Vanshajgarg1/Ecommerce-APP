
import 'package:flutter/material.dart';

import 'package:flutter_basic/HomePage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'assets/images/adi_logo-removebg-preview.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 48),
             const Text(
                'Impossible is Nothing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'blending innovative design with superior comfort and performance for athletes and everyday wear.',
                style: TextStyle(

                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GestureDetector(
                onTap:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(

                  decoration:  BoxDecoration(
                      color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:const EdgeInsets.all(25),
                  child: const Center(child: const Text(
                    'Shop now',
                    style: TextStyle(color: Colors.white ,
                    fontWeight:  FontWeight.bold,
                      fontSize: 16,

                    ),
                  )
                  ),


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
