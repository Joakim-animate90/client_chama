part of 'page.dart';


class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc , HomeState>(
      listener: (context, state) {
        if (state is HomeStateCreateGroup) {
          _onCreateGroup(context);
        }
      },
      child: const HomeView(),

    );
  }
}

