import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colour_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Get.offAndToNamed('/load');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://wallpapers.com/images/hd/indian-background-mxxpzryyy2f52dkv.jpg'),
              fit: BoxFit.cover),
        ),
        child: const Center(
          child: Text(
            'Matrimonial',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
