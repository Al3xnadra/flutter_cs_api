import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/app_style.dart';
import 'package:flutter_cs_api/app/config/responsive_layout.dart';
import 'package:flutter_cs_api/features/start/widgets/list_navigation.dart';
import 'package:flutter_cs_api/features/start/widgets/start_item.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobile: _StartContent(),
        tablet: _StartContent(
          maxWidth: 600,
        ),
        desktop: _StartContent(
          maxWidth: 800,
        ),
      ),
    );
  }
}

class _StartContent extends StatelessWidget {
  const _StartContent({this.maxWidth});

  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.startPadding(context),
      child: ListView(
        children: startNavigation
            .map((item) => StartItem(
                  title: item['title'],
                  imageUrl: item['imageUrl'],
                ))
            .toList(),
      ),
    );
  }
}
