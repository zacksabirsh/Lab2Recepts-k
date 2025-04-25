import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:lab2/widgets/recipe_image.dart';
import 'package:provider/provider.dart';


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
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(left: AppTheme.paddingMedium, top: 48),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RecipeImage(recipe, 240, 240, 60),
                          SizedBox(height: AppTheme.paddingMedium,),
                          Text("Ingredienser", style: AppTheme.smallHeading,),
                          Text("${recipe.servings} portion(er)", style: AppTheme.smallHeading,),
                          SizedBox(height: AppTheme.paddingSmall,),
                          for (var ingredient in recipe.ingredients)
                            Padding(
                              padding: const EdgeInsets.only(left: AppTheme.paddingMedium),
                              child: Text(ingredient.toString()),
                            )
                          ],
                        ),
                    ), 
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40, left: AppTheme.paddingLarge),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(recipe.name, style: AppTheme.largeHeading,),
                                Row( 
                                  children: [
                                    Container(
                                      child: MainIngredient.icon(recipe.mainIngredient)),
                                    Row(children: [
                                      Container(width: 48, child: Difficulty.icon(recipe.difficulty)),
                                      SizedBox(width: AppTheme.paddingSmall,),
                                      Text("${recipe.time} minuter"),
                                      SizedBox(width: AppTheme.paddingTiny,), 
                                      Text("${recipe.price}kr")])]
                                ),
                                SizedBox(height: AppTheme.paddingSmall,),
                                Text(recipe.description),
                                SizedBox(height: AppTheme.paddingMedium,),
                                Text("Tillagning:", style: AppTheme.smallHeading),
                                SizedBox(height: AppTheme.paddingSmall,),
                                Text(
                                  recipe.instruction, 
                                )

                                
                      
                              ],
                            ),
                          ),
                        ), 
                        Column(
                          children: [
                            IconButton(icon: Icon(Icons.close),onPressed: () {uiController.deselectRecipe();},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}