import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/component/input_field.dart';
import 'package:latihan1/controllers/football_edit_controller.dart';
import 'package:latihan1/models/player.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});

  final FootballEditController editController =
      Get.put(FootballEditController());

  @override
  Widget build(BuildContext context) {
 
    final args = Get.arguments as Map<String, dynamic>;
    final player = args["player"] as Player;
    final index = args["index"] as int;


    editController.loadPlayerData(player, index);

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputField(
                label: "Profile Image URL",
                controller: editController.imageController),
            InputField(
                label: "Nama", controller: editController.namaController),
            InputField(
                label: "Position", controller: editController.positionController),
            InputField(
                label: "Nomor Punggung",
                controller: editController.nomorController),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                editController.savePlayer();
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
