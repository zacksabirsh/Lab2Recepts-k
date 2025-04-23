import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:provider/provider.dart';


class TimeControl extends StatefulWidget {
   const TimeControl({super.key});

   @override
   State<TimeControl> createState() => _TimeControlState();
}

class _TimeControlState extends State<TimeControl> {

  double _time = 60;


   @override
Widget build(BuildContext context) {
  var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);

  return Column(
    children: [
      Slider(
        value: _time,
        divisions: 10,
        max: 150,
        onChanged: (double value) {


          setState(() {
            _time = value;
          });

          recipeHandler.setMaxTime(_time.round());

        },
      ),

      Text('${_time.round()} min'),
     ],
 );
}
}