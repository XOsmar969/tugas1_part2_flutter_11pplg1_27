import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/controllers/calculator_controller.dart';
import 'package:latihan1/widgets/widget_button.dart';
import 'package:latihan1/widgets/widget_textfield.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator")),
      body: Container(
        child: Column(
          children: [
            MyTextField(
              textEditingController: calculatorController.txtAngka1,
              labelText: "input angka 1",
            ),
            MyTextField(
              textEditingController: calculatorController.txtAngka2,
              labelText: "input angka 2",
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.tambah();
                    },
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.red,
                    onPressed: () {
                      calculatorController.kurang();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "x",
                    textColor: Colors.yellow,
                    onPressed: () {
                      calculatorController.kali();
                    },
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.green,
                    onPressed: () {
                      calculatorController.bagi();
                    },
                  ),
                ],
              ),
            ),
            Obx(() => Text("Hasil " + calculatorController.Hasil.value)),
            CustomButton(
              text: "Clear",
              textColor: Colors.green,
              onPressed: () {
                calculatorController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
