import 'package:flutter/material.dart';
import 'package:flutter_cs_api/features/responsive_layout.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
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
    final width = MediaQuery.of(context).size.width;
    final padding = width < 600
        ? EdgeInsets.symmetric(vertical: 30, horizontal: 20)
        : width < 1200
            ? EdgeInsets.symmetric(vertical: 30, horizontal: 80)
            : EdgeInsets.symmetric(vertical: 80, horizontal: 150);

    return Padding(
      padding: padding,
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
    final width = MediaQuery.of(context).size.width;
    final imageSize = width < 600
        ? 80.0
        : width < 1200
            ? 130.0
            : 130.0;
    final fontSize = width < 600
        ? 20.0
        : width < 1200
            ? 35.0
            : 35.0;
    return GestureDetector(
      onTap: () {
        context.go('/category');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF2D2D2D),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: imageSize,
              image: NetworkImage(imageUrl),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF057CDE),
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
