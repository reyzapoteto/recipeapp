import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final recipe recipenya;

  const RecipeDetail({Key? key, required this.recipenya}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipenya.label),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipenya.imageUrl)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipenya.label,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipenya.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipenya.ingredients[index];
                  return Text(
                      '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}');
                }),
          ),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipenya.servings} servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
        ],
      )),
    );
  }
}
