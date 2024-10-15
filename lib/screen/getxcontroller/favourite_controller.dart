import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> furite = [
    'Mango',
    'Papaya',
    'banana',
    'graps',
    'orange',
    'gaveva',
    'pineapple',
    'apple',
    'lemon'
  ].obs;
  RxList<String> price =
      ['200', '100', '50', '90', '160', '190', '40', '50', '10'].obs;
  RxList templist = [].obs;

  addfavourite(value) {
    templist.add(value);
  }

  removefavourite(value) {
    templist.remove(value);
  }
}
