import 'package:client_chama/src/sections/presentations/screens/home_page/views/page.dart';
import 'package:client_chama/src/utils/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeEngineRenderPage extends StatelessWidget {
  const HomeEngineRenderPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomeEngineRenderPage());

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(largeScreen: HomeViewWeb(), smallScreen: HomeView(), mediumScreen: HomeViewTablet(),);
  }
}
