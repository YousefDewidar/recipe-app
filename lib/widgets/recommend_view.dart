import 'package:flutter/material.dart';
import 'package:recips_app/helper/get_recipe_data.dart';
import 'package:recips_app/views/all_recommended_view.dart';
import 'package:recips_app/widgets/recipe_card.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color.fromARGB(255, 45, 45, 45),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AllRecommendedView.id);
                  },
                  child: const Text(
                    "view all",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color.fromARGB(229, 81, 81, 81),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 2, top: 10),
            physics: const NeverScrollableScrollPhysics(),
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
          )
        ],
      ),
    );
  }
}
