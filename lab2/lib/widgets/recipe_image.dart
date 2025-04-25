import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';

class RecipeImage extends StatelessWidget{
 
  
  const RecipeImage(this.recipe, this.height, this.width, this.flagWidth, {super.key});

  final double width;
  final double height;
  final Recipe recipe;
  final double flagWidth;

  @override
  Widget build(BuildContext context) {
    
  var square = ClipRect(
    child: Container(
      width: width, // Square width
      height: height, // Square height
      child: FittedBox(fit: BoxFit.cover, child: recipe.image),
    ),
  );
  var image = Cuisine.flag(recipe.cuisine, width: flagWidth);

  return Stack(
    children: [square, Positioned(bottom: 8, right: 8, child: image!)],
  );
 }
}