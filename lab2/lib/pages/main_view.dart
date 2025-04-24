import 'package:flutter/material.dart';
import 'package:lab2/widgets/control_panel.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/widgets/recipe_area.dart';




class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), RecipeArea()]),
    );
  }

  Widget _controlPanel(context, {double width = 320}) {
    return ControlPanel();
  }



}
