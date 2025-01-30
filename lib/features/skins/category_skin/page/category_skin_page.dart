import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/features/skins/category_skin/widgets/category_gridview.dart';
import 'package:flutter_cs_api/features/skins/category_skin/widgets/category_list.dart';
import 'package:flutter_cs_api/features/widgets/appBar_for_mobile.dart';

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
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarForMobile()),
      body: Padding(
        padding: AppStyle.padding(context),
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
                        style: const TextStyle(fontSize: 32),
                      ),
                      CategoryWeaponGridView(
                          crossAxisCount: AppStyle.categoryColumn(context),
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
