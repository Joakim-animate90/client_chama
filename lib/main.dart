import 'dart:async';

import 'package:client_chama/src/sections/app/page.dart';
import 'package:client_chama/src/sections/business/home/home_bloc.dart';
import 'package:client_chama/src/themes/global_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runZoned(() => runApp(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => HomeBloc()),
          ],
          child: MultiProvider(providers: [
            Provider<GlobalTheme>(create: (context) => GlobalTheme()),
          ], child: const ChamaEngine()))));
}
