part of 'page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kDarkGreen,
          appBar: AppBar(
            title: const Text('My Chats'),
          ),
          drawer: const CustomDrawer(),
          //container with image top and bottom text at center
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Image(
                  image: AssetImage('assets/images/happy_face.png'),
                  height: 200,
                  width: 200,
                ),
                const MySizedBox(),
                const Text(
                  'Hello',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI',
                  ),
                ),
                const MySizedBox(),
                const Text(
                  welcome_message,
                  style : TextStyle(
                    color: kPaleGreen,
                    fontSize: 16,
                    fontFamily: 'Segoe UI',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        search_group,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kPaleGreen,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kPaleGreen,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        create_group,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kPaleGreen,
                        ),
                      ),
                    ],
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
