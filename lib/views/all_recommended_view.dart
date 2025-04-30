import 'package:flutter/material.dart';
import 'package:recips_app/helper/get_recipe_data.dart';
import 'package:recips_app/widgets/recipe_card.dart';

class AllRecommendedView extends StatelessWidget {
  const AllRecommendedView({super.key});

  static const String id = 'all_recommended_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recommended",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 2, top: 20),
          physics: const BouncingScrollPhysics(),
          itemCount: recipeDetails().length,
          itemBuilder: (context, index) => Column(
            children: [
              RecipeCard(
                recipe: recipeDetails()[index],
                index: index,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
