import 'package:get/get.dart';
import 'package:zumda/domain/core/app/app_routes.dart';
import 'package:zumda/presentation/ui/currentPage.dart';
import 'package:zumda/presentation/ui/history_page.dart';
import 'package:zumda/presentation/ui/home_page.dart';
import 'package:zumda/presentation/ui/orderPage.dart';
import 'package:zumda/presentation/ui/ready_order.dart';
import 'package:zumda/presentation/ui/authPage.dart';
import 'package:zumda/presentation/ui/splash_page.dart';
import 'package:zumda/presentation/ui/user_page.dart';

class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashPage()),
    GetPage(name: AppRoutes.HOME, page: () => const HomePage()),
    GetPage(name: AppRoutes.SINGIN, page: () => const SigInPage()),
    GetPage(name: AppRoutes.USER, page: () => const UserPage()),
    GetPage(name: AppRoutes.ORDER, page: () => const OrderPage()),
    GetPage(name: AppRoutes.CURRENT, page: () => const CurrentPage()),
    GetPage(name: AppRoutes.HISTORY, page: () => const HistoryPage()),
    GetPage(name: AppRoutes.READY_ORDER, page: () => const ReadyOrder()),
  ];
}
