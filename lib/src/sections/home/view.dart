part of 'page.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc , HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kDarkGreen,
          appBar: AppBar(
            title: const Text('My Chats'),
            centerTitle: true,
          ),
          drawer: const CustomDrawer(),
          //container with image top and bottom text at center
          body: Center(child : Column(
            children: const [
              MySizedBox(),
              Image(
                image: AssetImage('assets/images/happy_face.png'),
                height: 200,
                width: 200,
              ),
             MySizedBox(),
              Text(
                'No chats yet',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 20,
                ),
              ),
             MySizedBox(),
              Text(
                'Start a new chat',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          ),
        );
      },
    );
  }
}
