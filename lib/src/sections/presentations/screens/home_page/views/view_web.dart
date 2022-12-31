part of 'page.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
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
    context: context,
    title: 'Lets Create Your Group',
    content: const CreateGroupForm(),
    //don't show cancel button
    buttons: [],
    //size of alert
    style: AlertStyle(
      isCloseButton: true,
      isOverlayTapDismiss: false,
      isButtonVisible: false,
      animationType: AnimationType.fromTop,
      animationDuration: const Duration(milliseconds: 400),
      overlayColor: Colors.transparent,
      constraints: const BoxConstraints.expand(width: 1000),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
          color: kSecondaryColor,
        ),
      ),
      titleStyle: const TextStyle(
        color: kBlack,
      ),
    ),
  ).show();
}
