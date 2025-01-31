import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cs_api/app/injection/injection_container.dart';
import 'package:flutter_cs_api/features/searchbar/cubit/searchbar_skin_cubit.dart';
import 'package:flutter_cs_api/features/searchbar/widget/search_bar.dart';

class SearchBarSkinView extends StatelessWidget {
  const SearchBarSkinView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchbarSkinCubit>(
      create: (context) => getIt()..listSkin(),
      child: BlocBuilder<SearchbarSkinCubit, SearchbarSkinState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      showSearch(
                          context: context,
                          delegate: SearchBarSkin(
                              getIt<SearchbarSkinCubit>()..listSkin()));
                    },
                    icon: Icon(Icons.search))
              ],
            ),
            body: ListView.builder(
              itemCount: state.skinModel.length,
              itemBuilder: (context, index) {
                final skin = state.skinModel[index];
                return ListTile(
                  title: Text(skin.name),
                  leading: Image(
                    image: NetworkImage(skin.image),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
