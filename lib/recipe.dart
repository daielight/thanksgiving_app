class Recipe{
  String recipeName;
  String recipeIngred;
  String recipeInstruct;
  String recipeImage;


  Recipe(this.recipeName, this.recipeIngred, this.recipeInstruct, this.recipeImage);

  List<Recipe> turkeyRecipes = 
  [
    Recipe('Roasted Turkey', 'Turkey ingre.png', 'Turkey recipe.png', 'Turkey.jpeg'),
    Recipe('Braised Turkey', 'BraisedTurkeyIngred.png', 'BraisedTurkeyRecipe.png', 'BraisedTurkey.jpg'),
    Recipe('Bacon Wrapped Turkey', 'BaconWrappedTurkeyIngred.png', 'BaconWrappedTurkeyRecipe.png', 'BaconWrappedTurkey.jpg')
  ];

  List<Recipe> dessertRecipes = [
    
  ];
}