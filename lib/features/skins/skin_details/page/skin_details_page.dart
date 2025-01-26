import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_crates_collection.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_float.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_image.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_info.dart';
import 'package:go_router/go_router.dart';

class SkinDetailsPage extends StatelessWidget {
  const SkinDetailsPage({
    super.key,
    required this.skin,
  });

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final padding = width < 600
        ? EdgeInsets.symmetric(vertical: 30, horizontal: 10)
        : width < 1200
            ? EdgeInsets.symmetric(vertical: 30, horizontal: 30)
            : EdgeInsets.symmetric(vertical: 50, horizontal: 50);

    final content = width < 600
        ? _ContentForMobile(
            skin: skin,
          )
        : width < 1200
            ? _ContentForWeb(
                skin: skin,
              )
            : _ContentForWeb(
                skin: skin,
              );
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      appBar: width < 600
          ? AppBar(
              backgroundColor: Color(0xFF1A1A1A),
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(width, 0),
              child: SizedBox(),
            ),
      body: Padding(
        padding: padding,
        child: content,
      ),
    );
  }
}

class _ContentForMobile extends StatelessWidget {
  final SkinModel skin;

  const _ContentForMobile({required this.skin});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Wrap(
          runSpacing: 10,
          children: [
            SkinImage(skin: skin),
            SkinInfo(skin: skin),
            SkinCratesCollection(skin: skin),
            SkinFloat(skin: skin),
          ],
        ),
      ),
    );
  }
}

class _ContentForWeb extends StatelessWidget {
  final SkinModel skin;

  const _ContentForWeb({required this.skin});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkinImage(skin: skin),
            Flexible(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SkinInfo(skin: skin),
            )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkinCratesCollection(skin: skin),
            SizedBox(
              width: 20,
            ),
            SkinFloat(skin: skin)
          ],
        ),
      ],
    );
  }
}
