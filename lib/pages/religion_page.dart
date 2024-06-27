import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import '../controller/default_controller.dart';

class ReligionPage extends StatefulWidget {
  const ReligionPage({super.key});

  @override
  State<ReligionPage> createState() => _ReligionPageState();
}

class _ReligionPageState extends State<ReligionPage> {
  final HomePageController controller = Get.put(HomePageController());
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
                      'https://www.kindpng.com/picc/m/153-1538896_community-icon-transparent-background-png-download-transparent-transparent.png'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Your religion',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  hintText: 'Religion',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Community',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  hintText: 'Community',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Living in',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  hintText: 'Country',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 30),
              child: CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Get.toNamed('/email');
                  },
                  color: Colors.cyan,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white)),
            ),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
