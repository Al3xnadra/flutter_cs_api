import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/color_app.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinImage extends StatelessWidget {
  const SkinImage({super.key, required this.skin});

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient(skin.rarity.color),
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [
            0,
            0.30,
            100,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 289,
      width: 289,
      child: Image.network(skin.image),
    );
  }
}
