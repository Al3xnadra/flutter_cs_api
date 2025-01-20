import 'package:flutter/material.dart';
import 'package:flutter_cs_api/features/skins/category_skin/page/category_skin_page.dart';
import 'package:flutter_cs_api/features/skins/select_skin/page/select_skin_page.dart';
import 'package:flutter_cs_api/features/skins/skin_details/page/skin_details_page.dart';
import 'package:flutter_cs_api/features/start/page/start_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // home: StartPage(),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'start',
      path: '/',
      builder: (context, state) => StartPage(),
    ),
    GoRoute(
      name: 'category',
      path: '/category',
      builder: (context, state) => CategorySkinPage(),
    ),
    GoRoute(
      name: 'selectSkin',
      path: '/selectSkin',
      builder: (context, state) => SelectSkinPage(),
    ),
    GoRoute(
      name: 'skinDetails',
      path: '/skinDetails',
      builder: (context, state) => SkinDetailsPage(),
    ),
  ],
);
