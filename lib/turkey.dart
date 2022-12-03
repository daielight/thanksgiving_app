import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_details.dart';

class Card1 extends StatelessWidget {
  const Card1({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Turkey Recipes'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RecipeDetail(recipe: Recipe.turkeyRecipes[index]);
                },
                )
              );
            },
            child: buildRecipeCard(Recipe.turkeyRecipes[index]),
          );
        }),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(recipe.recipeName),
            Image(image: AssetImage(recipe.recipeImage),
            ),
          ],
        ),
      ),
    );
  }
}
