import 'package:get/get.dart';

class HomePageController extends GetxController {
  var selectedItem = RxnString();
  static const List<String> religionTypes = [
    'Hindu',
    'Sikh',
    'Christian',
    'Buddhist',
    'Jewish',
    'Parsi',
    'Jain',
    'Muslim',
    'Spirtual - not religious',
    'No Religion',
    'Other',
  ];
}