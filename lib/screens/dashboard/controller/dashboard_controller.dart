import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

import '../view/files/files.dart';
import '../view/tools/tools.dart';

class DashBoardController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList pages = [
    ToolsScreen(),
    Files(),
  ].obs;
}
