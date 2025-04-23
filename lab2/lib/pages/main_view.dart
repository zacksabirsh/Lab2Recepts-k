import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), _recipeArea(context)]),
    );
  }

  Widget _controlPanel(context, {double width = 320}) {
    return Container(
        width: width,
        color: const Color.fromARGB(255, 193, 210, 218),
        child: Column(children: [Text("Receptsök"), Text("Hitta ett recept som passar genom att ändra inställningarna nedanför.")])
    );
  }


  Widget _recipeArea(context) {
    return Expanded(
        child: Container(color: const Color.fromARGB(255, 204, 216, 176)),
    );
  }
}
