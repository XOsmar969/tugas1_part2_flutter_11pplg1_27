
import 'package:get/get.dart';
import 'package:latihan1/pages/calculator_page.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/pages/football_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayer, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballeditplayer, page: () => FootballEditPage()),
  ];
}
