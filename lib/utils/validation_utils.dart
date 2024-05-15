import 'exports.dart';

bool isContactNumberValidate(String phoneNumber) {
  return phoneNumber.contains(RegExpressions.phoneNumber) ? true : false;
}