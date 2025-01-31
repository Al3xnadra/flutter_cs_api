import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/features/searchbar/view/searchbar_skin_view.dart';
import 'package:go_router/go_router.dart';

class AppBarForMobile extends StatelessWidget {
  const AppBarForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppStyle.getWidth(context) < 600
        ? AppBar(
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchBarSkinView()));
                  },
                  icon: Icon(Icons.search)),
            ],
          )
        : PreferredSize(
            preferredSize: Size(AppStyle.getWidth(context), 0),
            child: SizedBox(),
          );
  }
}
