import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/color_app.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:go_router/go_router.dart';

class CardSkin extends StatelessWidget {
  const CardSkin({
    super.key,
    required this.skin,
  });

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/skinDetails/${skin.name}', extra: skin);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => LinearGradient(
                colors: gradient(skin.rarity.color),
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                skin.rarity.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(skin.image)),
                ),
              ),
            ),
            Text(
              skin.name,
            ),
          ],
        ),
      ),
    );
  }
}
