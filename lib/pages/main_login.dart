import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:matromonial_app/constant/custom_button.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://wallpapers.com/images/hd/indian-background-mxxpzryyy2f52dkv.jpg',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Center(
                child: Text(
                  'Matrimonial',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35),
                ),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                const Text(
                  'New to Matrimony.com?',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomBasicButton(
                    text: 'Sign Up with Email',
                    onPressed: () {},
                    icon: const Icon(
                      Icons.email_rounded,
                      color: Colors.black,
                    ),
                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold), color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomBasicButton(
                    text: 'Sign Up with Mobile',
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone_iphone,
                      color: Colors.black,
                    ),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18), color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomBasicButton(
                    text: 'Sign Up with Google',
                    onPressed: () {
                      Get.toNamed('/profile');
                    },
                    icon: const Icon(Icons.adb),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18), color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomSmallButton(
                      text: 'Login',
                      onPressed: () {
                        Get.toNamed('/login');
                      },
                      textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white), color: Colors.transparent,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
