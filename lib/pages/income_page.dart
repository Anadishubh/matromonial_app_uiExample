import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matromonial_app/constant/custom_button.dart';
import '../controller/default_controller.dart';

class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
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
              padding: const EdgeInsets.only(top: 78.0),
              child: Center(
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Business_Suitcase_Flat_Icon.svg/1200px-Business_Suitcase_Flat_Icon.svg.png')),
              ),
            ),
            const Center(
              child: Text(
                'You are almost done!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Annual income',
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
                  hintText: 'Your annual income',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 10),
              child: Row(
                children: [
                  const Text(
                    'Why is income required?',
                    style: TextStyle(color: Colors.grey),
                  ),
                 const SizedBox(width: 5,),
                 InkWell(
                   borderRadius: BorderRadius.circular(10),
                   onTap: (){},
                   child: Container(
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey,width: 2),
                       shape: BoxShape.circle
                     ),
                     child: const Icon(Icons.question_mark,color: Colors.grey,size: 20,),
                   ),
                 )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                'Work details',
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
                  hintText: 'You work with',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(
              height: 40,
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
                  hintText: 'You work as',
                  items: HomePageController.religionTypes,
                  onChanged: controller.selectedItem.call),
            ),
            const SizedBox(height: 50,),
            CustomButton(
                text: 'Create Profile',
                onPressed: () {},
                color: Colors.cyan,
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}
