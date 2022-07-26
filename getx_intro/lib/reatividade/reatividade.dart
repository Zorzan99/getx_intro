import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/reatividade/user_controller.dart';

class Reatividade extends StatelessWidget {
  Reatividade({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  TextStyle commonStyle() => const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );

  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Apresentação do nome
            Obx(() => Text(
                  'Nome: ${userController.user.value.name}',
                  style: commonStyle(),
                )),
            //Apresentação idade
            Obx(() => Text(
                  'idade: ${userController.user.value.age}',
                  style: commonStyle(),
                )),
            const Divider(
              thickness: 1.5,
              color: Colors.blue,
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // campo de pesquisa

                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      label: Text('Nome'),
                    ),
                  ),
                ),
                // Botão para salvar o nome
                ElevatedButton(
                  onPressed: () {
                    userController.setUserName(nameController.text);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // campo de pesquisa

                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      label: Text('idade'),
                    ),
                  ),
                ),
                // Botão para salvar o nome
                ElevatedButton(
                  onPressed: () {
                    userController.setUserAge(int.parse(ageController.text));
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
