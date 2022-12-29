import 'package:client_chama/src/sections/business/home/home_bloc.dart';
import 'package:client_chama/src/sections/home/page.dart';
import 'package:client_chama/src/themes/global_themes.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

part 'routing.dart';

class ChamaEngine extends StatelessWidget {
  const ChamaEngine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData lightTheme = Provider.of<GlobalTheme>(context).lightTheme;
    return MaterialApp(
      title: 'Chama',
      theme: lightTheme,
      home: FlowBuilder(
        state: context.select <HomeBloc, HomeState>((bloc) => bloc.state),
        onGeneratePages: onGenerateHomeViewPages,
      )

    );
  }
}
