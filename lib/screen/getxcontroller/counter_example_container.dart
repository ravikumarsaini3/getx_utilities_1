import 'package:get/get.dart';

class Countergetx extends GetxController{
  RxInt x=1.obs;

  void increment(){
    x.value++;
  }

}