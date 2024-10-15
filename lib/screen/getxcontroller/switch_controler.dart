import 'package:get/get.dart';

class SwitchControler extends GetxController{
  RxBool notification=false.obs;
  changeswitch(bool value){
    notification.value=value;

  }
}