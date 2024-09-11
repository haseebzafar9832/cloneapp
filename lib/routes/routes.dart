import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../screens/authentication/view /login/login_screen.dart';
import '../screens/dashboard/view/dashboard.dart';

appRoutes() => [
      GetPage(
        name: '/login',
        page: () => const LoginScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/dashboard',
        page: () => DashBoard(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      ),
    ];
