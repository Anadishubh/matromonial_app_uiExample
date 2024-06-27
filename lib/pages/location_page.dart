import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import '../controller/default_controller.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isChecked = false;
  HomePageController controller = Get.find();
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
                    height: 100,
                    width: 100,
                    child: Image.network(
                      'https://www.iconpacks.net/icons/2/free-location-map-icon-2956-thumb.png',
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Now let's build your Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'State',
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
                  hintText: 'State',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'City',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  hintText: 'City',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Sub-community',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  hintText: 'Sub-community',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.cyan,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                          const Text(
                            "Not particular about my partner's\ncommunity(Caste no bar)",
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      CustomButton(
                        text: 'Continue',
                        onPressed: () {
                          Get.toNamed('/martial');
                        },
                        color: Colors.cyan,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
