import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cs_api/app/injection/injection_container.dart';
import 'package:flutter_cs_api/features/skins/select_skin/cubit/select_skin_cubit.dart';
import 'package:go_router/go_router.dart';

class SelectSkinPage extends StatelessWidget {
  const SelectSkinPage({super.key, required this.name});

  final String name;

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
    return BlocProvider(
      create: (context) => getIt<SelectSkinCubit>()..getSkinsData(name),
      child: BlocBuilder<SelectSkinCubit, SelectSkinState>(
        builder: (context, state) {
          final skinModel = state.skinModel;
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
                    itemCount: skinModel.length,
                    itemBuilder: (context, index) {
                      final skin = skinModel[index];
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
                            context.go('/skinDetails/${skin.name}',
                                extra: skin);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(skin.image)),
                                  ),
                                ),
                              ),
                              Text(
                                skin.name,
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
        },
      ),
    );
  }
}
