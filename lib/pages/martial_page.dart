import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import '../controller/default_controller.dart';

class MartialPage extends StatefulWidget {
  const MartialPage({super.key});

  @override
  State<MartialPage> createState() => _MartialPageState();
}

class _MartialPageState extends State<MartialPage> {
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
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW2IUFldnVPUT3xZcuyPOvXNg96VvS42NMKwsPwm_p_9iw2tqI50rip1tPaOoFo-mjuUA&usqp=CAU')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Martial Status',
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
                  hintText: 'Your Martial status*',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Height',
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
                  hintText: 'Your Height*',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Diet',
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
                  hintText: 'Your Diet',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            SizedBox(height: 100,),
            CustomButton(
                text: 'Continue',
                onPressed: () {
                  Get.toNamed('/qualification');
                },
                color: Colors.cyan,
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}
