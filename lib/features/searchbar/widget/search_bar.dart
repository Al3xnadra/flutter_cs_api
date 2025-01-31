import 'package:flutter/material.dart';
import 'package:flutter_cs_api/features/searchbar/cubit/searchbar_skin_cubit.dart';
import 'package:go_router/go_router.dart';

class SearchBarSkin extends SearchDelegate {
  SearchBarSkin(this.searchbarSkinCubit);

  final SearchbarSkinCubit searchbarSkinCubit;

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), icon: Icon(Icons.arrow_back_ios));

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: Icon(Icons.clear),
        )
      ];

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final result = searchbarSkinCubit.state.skinModel.where((skin) {
      return skin.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (context, index) {
        final skin = result[index];

        return GestureDetector(
          onTap: () {
            context.push('/skinDetails/${skin.name}', extra: skin);
          },
          child: ListTile(
            title: Text(skin.name),
            leading: Image(
              image: NetworkImage(skin.image),
            ),
          ),
        );
      },
    );
  }
}
