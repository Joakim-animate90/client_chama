
import 'package:client_chama/src/common/widgets/page.dart';
import 'package:client_chama/src/sections/business/home/home_bloc.dart';
import 'package:client_chama/src/utils/colors/colors.dart';
import 'package:client_chama/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
