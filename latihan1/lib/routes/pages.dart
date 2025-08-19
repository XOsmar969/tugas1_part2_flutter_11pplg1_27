import 'package:latihan1/login_page.dart';
import 'package:get/get.dart';
import 'package:latihan1/pages/home_page.dart';
import 'package:latihan1/pages/calculator_page.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/pages/football_page.dart';
import 'package:latihan1/routes/routes.dart';
import 'package:latihan1/register_page.dart ';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
    GetPage(name: AppRoutes.register, page: () => const RegisterPage()),
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballEdit, page: () => FootballEditPage()),
  ];
}
