import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import '../controller/default_controller.dart';

class QualificationPage extends StatefulWidget {
  const QualificationPage({super.key});

  @override
  State<QualificationPage> createState() => _QualificationPageState();
}

class _QualificationPageState extends State<QualificationPage> {
  HomePageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 88.0),
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://www.shutterstock.com/image-vector/graduation-cap-diploma-black-web-600nw-156398897.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Great! Few more details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Highest qualification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: CustomDropdown<String>(
                  decoration: CustomDropdownDecoration(
                    closedBorder: Border.all(),
                    expandedFillColor: Colors.grey,
                    listItemDecoration: const ListItemDecoration(
                      selectedColor: Colors.white,
                      splashColor: Colors.grey,
                    ),
                    listItemStyle: const TextStyle(color: Colors.white),
                  ),
                  hintText: 'Your highest qualification',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'College',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                  label: const Text(
                    'College you attended',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
                text: 'Continue',
                onPressed: () {
                  Get.toNamed('/income');
                },
                color: Colors.cyan,
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}
