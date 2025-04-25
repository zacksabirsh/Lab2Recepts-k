import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

class ControlPanel extends StatelessWidget {
    
    Widget build(context, {double width = 320}) {
    return Container(
        width: width,
        color: const Color.fromARGB(255, 193, 210, 218),
        child: Column(children: [Logo(), Padding(
          padding: const EdgeInsets.only(left: AppTheme.paddingMediumSmall),
          child: Text("Hitta ett recept som passar genom att ändra inställningarna nedanför.\n"),
        ),
              SizedBox(height: 16,), 
              Padding(
                padding: const EdgeInsets.only(right: AppTheme.paddingMedium),
                child: IngredientControl(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: AppTheme.paddingMedium),
                child: KitchenControl(),
              ),

              //Difficulty 
              SizedBox(height: 10,), 
              Padding(
                padding: const EdgeInsets.only(left: AppTheme.paddingSmall),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text("Svårighetsgrad", style: AppTheme.smallHeading,)]),
              ),
              DifficulyControl(),

              //Sliders
              SizedBox(height: 10,), 
              Padding(
                padding: const EdgeInsets.only(left: AppTheme.paddingSmall),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text("Maxpris: ", style: AppTheme.smallHeading,)]),
              ),
              PriceControl(),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: AppTheme.paddingSmall),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text("Maxtid: ", style: AppTheme.smallHeading,)]),
              ),
              TimeControl(),

        ],
              
      ), 
    );
    
  }
}