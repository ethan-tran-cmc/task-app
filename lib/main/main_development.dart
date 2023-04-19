import 'package:flutter_todo_app/environment/flavors.dart';
import 'package:flutter_todo_app/main/main_common.dart';

void main() {
  Flavor.appFlavor = AppFlavor.development;
  mainCommon();
}
