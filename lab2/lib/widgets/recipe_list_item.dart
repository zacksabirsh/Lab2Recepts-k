import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:lab2/widgets/recipe_image.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
        child: Container(
          height: 128,
          child: Row(
            children: [
            Padding(padding: EdgeInsets.only(left: AppTheme.paddingSmall),child: RecipeImage(recipe, 104, 104, 24)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: AppTheme.paddingSmall, left: AppTheme.paddingSmall),
                child: Column(
                  spacing: AppTheme.paddingSmall,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipe.name, 
                        style: AppTheme.mediumHeading,
                      ),
                      Text(
                        recipe.description,
                        overflow: TextOverflow.ellipsis, 
                        maxLines: 2,
                      ),
                       Row(
                        children: [
                        Container(
                            width: 18, 
                            child: MainIngredient.icon(recipe.mainIngredient)),
                        
                        Row(
                          spacing: AppTheme.paddingSmall,
                          children: [
                            Container(
                            width: 48, 
                            child: Difficulty.icon(recipe.difficulty)),Text("${recipe.time} minuter"), Text("${recipe.price}kr")
                            ]
                            ),
                        ]
                      ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

