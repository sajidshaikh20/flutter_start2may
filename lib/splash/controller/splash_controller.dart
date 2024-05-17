import 'package:flutter_start2may/utils/exports.dart';

class SplashController extends GetxController{

  final  counter = 0.obs;


  increamentCounter(){
    counter.value++;
    print(counter);
  }

}