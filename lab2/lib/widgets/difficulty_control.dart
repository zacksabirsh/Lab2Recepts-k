import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:provider/provider.dart';

class DifficulyControl extends StatefulWidget {
   const DifficulyControl({super.key});

   @override
   State<DifficulyControl> createState() => _DifficulyControlState();
}

class _DifficulyControlState extends State<DifficulyControl> {
  String _difficulty = Difficulty.labels[0];

  
  @override
  Widget build(BuildContext context) {
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    const labels = Difficulty.labels;
    return Column(
      children: [
        for (var label in labels)
          
          RadioListTile<String>(
            dense: true,
            title: 
              Row(spacing: AppTheme.paddingMedium, 
                  children: [if (label != Difficulty.showAll) 
                  Container(width: 48,child: Difficulty.icon(label)), Text(label)]),
            value: label,
            groupValue: _difficulty,
            onChanged: (value) {
              recipeHandler.setDifficulty(value);
              setState(() {
                _difficulty = value!;
                });
              },
          ),  // RadioListTile
        ],
    );
  }
}