import 'package:flutter/material.dart';
import 'package:flutter_cs_api/features/skins/category_skin/widgets/category_list.dart';
import 'package:go_router/go_router.dart';

class CategorySkinPage extends StatelessWidget {
  CategorySkinPage({super.key});

  final Map<int, String> categoriesWeapon = {
    0: 'Pistols',
    1: 'Rifles',
    2: 'SMGs',
    3: 'Heavy',
    4: 'Knives',
    5: 'Gloves'
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final columns = width < 600
        ? 2
        : width < 1200
            ? 4
            : 6;
    final padding = width < 600
        ? EdgeInsets.symmetric(vertical: 30, horizontal: 10)
        : width < 1200
            ? EdgeInsets.symmetric(vertical: 30, horizontal: 30)
            : EdgeInsets.symmetric(vertical: 50, horizontal: 50);
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Padding(
        padding: padding,
        child: Column(
          children: [
            Flexible(
                child: ListView(
              children: categoriesWeapon.entries.map((e) {
                int index = e.key;
                String title = categoriesWeapon[index]!;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style:
                            const TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      CategoryWeaponGridView(
                          crossAxisCount: columns,
                          selectedCategory:
                              CategoryList.getWeaponCategories()[index])
                    ],
                  ),
                );
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}

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
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(selectedCategory.weapons.length, (index) {
        return GestureDetector(
          onTap: () {
            context.go('/selectSkin');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(selectedCategory.weapons[index].image),
                Text(
                  selectedCategory.weapons[index].name,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
