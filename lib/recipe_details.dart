import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,required this.recipe,}) : super(key: key);

  @override
  RecipeDetailState createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetail>{
  Widget build(BuildContext){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(widget.recipe.recipeImage),
          Image.asset(widget.recipe.recipeName),
          Image.asset(widget.recipe.recipeIngred),
          Image.asset(widget.recipe.recipeInstruct)
        ],
      ),
    );
  }
}