import 'package:flutter/material.dart';
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
    return Container(
        width: width,
        color: const Color.fromARGB(255, 193, 210, 218),
        child: Column(children: [Text("Receptsök"), Text("Hitta ett recept som passar genom att ändra inställningarna nedanför."),
              SizedBox(height: 16,), 
              Row(children: [Text("Ingrediens: ")]),IngredientControl(),
              Row(children: [Text("Kök: ")],),KitchenControl(),

              //Difficulty 
              SizedBox(height: 10,), 
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Svårighetsgrad")]),
              DifficulyControl(),

              //Sliders
              SizedBox(height: 10,), 
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Price: ")]),
              PriceControl(),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Time: ")]),
              TimeControl(),

        ],
              
              ), 
    );
    
  }



}
