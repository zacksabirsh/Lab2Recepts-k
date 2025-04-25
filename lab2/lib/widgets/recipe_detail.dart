import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/ingredient.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:provider/provider.dart';
import 'package:lab2/model/recipe_database/ingredient.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;


  @override
  Widget build(BuildContext context) {  
    var uiController = Provider.of<UIController>(context, listen: false);
    
    return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              child: 
                Row(
                  spacing: AppTheme.paddingHuge,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: AppTheme.paddingMedium, top: 48),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _image(recipe),
                          SizedBox(height: AppTheme.paddingMedium,),
                          Text("Ingredienser", style: AppTheme.smallHeading,),
                          Text("2 portioner", style: AppTheme.smallHeading,),
                  
                          ],
                        ),
                    ), 
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(children: [Text(recipe.name, style: AppTheme.largeHeading,)],),
                        ), 
                        IconButton(icon: Icon(Icons.close),onPressed: () {uiController.deselectRecipe();},
                        )
                      ],
                    ),
                  ),
              );
  }
  
  
  
  
  Widget _image(recipe) {
  var square = ClipRect(
    child: Container(
      width: 240, // Square width
      height: 240, // Square height
      child: FittedBox(fit: BoxFit.cover, child: recipe.image),
    ),
  );
  var flagImage = Cuisine.flag(recipe.cuisine, width: 60.0);

  return Stack(
    children: [square, Positioned(bottom: 8, right: 8, child: flagImage!)],
  );
 }
}