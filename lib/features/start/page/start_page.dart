import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/features/responsive_layout.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobile: _StartContent(),
        tablet: _StartContent(
          maxWidth: 600,
        ),
        desktop: _StartContent(
          maxWidth: 800,
        ),
      ),
    );
  }
}

class _StartContent extends StatelessWidget {
  const _StartContent({this.maxWidth});

  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.startPadding(context),
      child: ListView(
        children: startNavigation
            .map((item) => StartItem(
                  title: item['title'],
                  imageUrl: item['imageUrl'],
                ))
            .toList(),
      ),
    );
  }
}

class StartItem extends StatelessWidget {
  const StartItem({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title, imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/category');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppStyle.getSecondaryColor(context),
          borderRadius: AppStyle.borderRadiusL,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: AppStyle.imageSize(context),
              image: NetworkImage(imageUrl),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: AppStyle.fontSize(context),
                fontWeight: FontWeight.bold,
                color: AppStyle.getPrimaryColor(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List startNavigation = [
  {
    'title': 'Skins',
    'imageUrl':
        'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/default_generated/weapon_ak47_cu_panther_ak47_light_png.png',
  },
  {
    'title': 'Agents',
    'imageUrl':
        'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/characters/customplayer_tm_professional_varf5_png.png',
  },
  {
    'title': 'Cases',
    'imageUrl':
        'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/weapon_cases/crate_esports_2014_summer_png.png',
  },
];
