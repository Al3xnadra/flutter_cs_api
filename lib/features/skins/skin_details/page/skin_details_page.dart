import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_crates_collection.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_float.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_image.dart';
import 'package:flutter_cs_api/features/skins/skin_details/widgets/skin_info.dart';
import 'package:flutter_cs_api/features/widgets/appBar_for_mobile.dart';

class SkinDetailsPage extends StatelessWidget {
  const SkinDetailsPage({
    super.key,
    required this.skin,
  });

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarForMobile()),
      body: Padding(
        padding: AppStyle.padding(context),
        child: AppStyle.content(context, _ContentForMobile(skin: skin),
            _ContentForDesktop(skin: skin), _ContentForDesktop(skin: skin)),
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
      child: Wrap(
        runSpacing: 10,
        children: [
          Center(child: SkinImage(skin: skin)),
          SkinInfo(skin: skin),
          SkinCratesCollection(skin: skin),
          SkinFloat(skin: skin),
        ],
      ),
    );
  }
}

class _ContentForDesktop extends StatelessWidget {
  final SkinModel skin;

  const _ContentForDesktop({required this.skin});
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
            if (skin.collections!.isNotEmpty) SkinCratesCollection(skin: skin),
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
