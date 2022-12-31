part of 'page.dart';
class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({Key? key}) : super(key: key);

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
 _onCreateGroup(BuildContext context) {
  Alert(
    context:context,
    title: 'Lets Create Your Group',
    content: const CreateGroupForm(),
    //don't show cancel button
    buttons: [
    ],

  ).show();
}