import 'package:client_chama/src/sections/presentations/screens/createGroup_page/views/page.dart';
import 'package:client_chama/src/sections/presentations/screens/home_page/views/page.dart';
import 'package:client_chama/src/utils/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
class CreateGroupRenderPage extends StatelessWidget {
  const CreateGroupRenderPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: CreateGroupRenderPage());

  @override
  Widget build(BuildContext context) {
    return const  ResponsiveLayout(largeScreen: HomeViewWeb(), smallScreen: ViewMobileCreateGroup(), mediumScreen: HomeViewTablet(),);
  }
}
