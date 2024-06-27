import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import 'package:get/get.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 88.0),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      'https://cdn-icons-png.freepik.com/512/8430/8430139.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'An active email ID & phone no.\nare required to secure your profile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Email ID',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Email',
                  label: const Text(
                    'Email ID',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Mobile no.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                children: [
                  Expanded(
                    child: IntlPhoneField(
                      keyboardType: TextInputType.number,
                      flagsButtonPadding: const EdgeInsets.all(8),
                      dropdownIconPosition: IconPosition.trailing,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 130,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: CustomButton(
                text: 'Submit',
                onPressed: () {
                  Get.toNamed('/location');
                },
                color: Colors.cyan,
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
