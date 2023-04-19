import 'package:flutter_todo_app/environment/flavors.dart';
import 'main_common.dart';

void main() {
  Flavor.appFlavor = AppFlavor.staging;
  mainCommon();
}
