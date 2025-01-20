import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectSkinPage extends StatelessWidget {
  const SelectSkinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final columns = width < 600
        ? 2
        : width < 1200
            ? 3
            : 4;
    final padding = width < 600
        ? EdgeInsets.symmetric(vertical: 30, horizontal: 10)
        : width < 1200
            ? EdgeInsets.symmetric(vertical: 30, horizontal: 30)
            : EdgeInsets.symmetric(vertical: 50, horizontal: 50);
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Padding(
        padding: padding,
        child: ListView(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFeb4b4b),
                          Color(0xFF911717),
                        ],
                        end: Alignment.bottomRight,
                        begin: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: GestureDetector(
                    onTap: () {
                      context.go('/skinDetails');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/default_generated/weapon_ak47_cu_panther_ak47_light_png.png')),
                            ),
                          ),
                        ),
                        Text(
                          'AK-47 | Jaguar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
