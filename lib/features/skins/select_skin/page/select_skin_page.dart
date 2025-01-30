import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cs_api/app/config/theme/color_app.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/app/injection/injection_container.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:flutter_cs_api/features/skins/select_skin/cubit/select_skin_cubit.dart';
import 'package:flutter_cs_api/features/widgets/appBar_for_mobile.dart';
import 'package:go_router/go_router.dart';

class SelectSkinPage extends StatelessWidget {
  const SelectSkinPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectSkinCubit>()..getSkinsData(name),
      child: BlocBuilder<SelectSkinCubit, SelectSkinState>(
        builder: (context, state) {
          final skinModel = state.skinModel;
          return Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(50), child: AppBarForMobile()),
            body: Padding(
              padding: AppStyle.padding(context),
              child: ListView(
                children: [
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: AppStyle.selectColumn(context),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: skinModel.length,
                    itemBuilder: (context, index) {
                      final skin = skinModel[index];
                      return CardSkin(skin: skin);
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

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
