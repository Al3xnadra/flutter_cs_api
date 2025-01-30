import 'package:flutter/material.dart';
import 'package:flutter_cs_api/features/skins/category_skin/widgets/category_list.dart';
import 'package:go_router/go_router.dart';

class CategoryWeaponGridView extends StatelessWidget {
  const CategoryWeaponGridView(
      {super.key,
      required this.selectedCategory,
      required this.crossAxisCount});

  final CategoryWeapon selectedCategory;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 8),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(selectedCategory.weapons.length, (index) {
        return GestureDetector(
          onTap: () {
            context.push('/selectSkin/${selectedCategory.weapons[index].name}');
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(selectedCategory.weapons[index].image),
                Text(
                  selectedCategory.weapons[index].name,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
