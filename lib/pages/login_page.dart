import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../constant/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 108.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                'Login to your account',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28, top: 30),
                child: CustomShadowButton(
                  text: 'Continue with Google',
                  onPressed: () {},
                  icon: const Icon(Icons.adb),
                  color: Colors.black,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 165,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.8, color: Colors.grey.shade300),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.8, color: Colors.grey.shade300),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(
                        'Mobile No. / Email ID',
                        style: TextStyle(fontSize: 16),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Password', labelStyle: TextStyle()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Login with OTP'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 66.0),
                child: CustomButton(
                  text: 'Login',
                  onPressed: () {},
                  color: const Color(0xff0cffff),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 120,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.8, color: Colors.grey.shade300),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Row(
                      children: [
                        Text(
                          "Sign Up Free",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
