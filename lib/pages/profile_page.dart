import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:matromonial_app/constant/custom_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? selectedItem;
  String? selectedGender;

  void selectItem(String item) {
    setState(() {
      selectedItem = item;
      selectedGender = null;
    });
  }

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  Widget buildToggleItem(String text, {bool isGender = false}) {
    return GestureDetector(
      onTap: () => isGender ? selectGender(text) : selectItem(text),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              (isGender ? selectedGender : selectedItem) == text
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: Colors.cyan,
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGenderSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            'Your Gender',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: buildToggleItem('Male', isGender: true),
            ),
            const SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: buildToggleItem('Female', isGender: true),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: CustomButton(
            text: 'Continue',
            onPressed: () {
              Get.toNamed('/profile2');
            },
            color: Colors.cyanAccent,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDefaultButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20,top: 119),
      child: CustomButton(
        text: 'Continue',
        onPressed: () {
          Get.toNamed('/profile2');
        },
        color: Colors.cyanAccent,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvts5aHBstDkR8PigS4RmZkbZy78zpZoSuOw&s',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'This Profile is for',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  buildToggleItem('Myself'),
                  const SizedBox(width: 15),
                  buildToggleItem('My Son'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  buildToggleItem('My Daughter'),
                  const SizedBox(width: 15),
                  buildToggleItem('My Brother'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  buildToggleItem('My Sister'),
                  const SizedBox(width: 15),
                  buildToggleItem('My Friend'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: buildToggleItem('My Relative'),
            ),
            const SizedBox(height: 20),
            if (selectedItem == 'Myself' ||
                selectedItem == 'My Friend' ||
                selectedItem == 'My Relative')
              buildGenderSelection(),
            if (selectedItem == 'My Son' ||
                selectedItem == 'My Daughter' ||
                selectedItem == 'My Brother' ||
                selectedItem == 'My Sister')
              buildDefaultButton(),
          ],
        ),
      ),
    );
  }
}