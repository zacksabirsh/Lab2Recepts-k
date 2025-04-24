import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

class ControlPanel extends StatelessWidget {
    
    Widget build(context, {double width = 320}) {
    return Container(
        width: width,
        color: const Color.fromARGB(255, 193, 210, 218),
        child: Column(children: [Text("Receptsök"), Text("Hitta ett recept som passar genom att ändra inställningarna nedanför."),
              SizedBox(height: 16,), 
              IngredientControl(),
              KitchenControl(),

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