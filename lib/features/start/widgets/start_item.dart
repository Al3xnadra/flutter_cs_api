import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:go_router/go_router.dart';

class StartItem extends StatelessWidget {
  const StartItem({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title, imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/category');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppStyle.getSecondaryColor(context),
          borderRadius: AppStyle.borderRadiusL,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: AppStyle.imageSize(context),
              image: NetworkImage(imageUrl),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: AppStyle.fontSize(context),
                fontWeight: FontWeight.bold,
                color: AppStyle.getPrimaryColor(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
