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
            title: const CustomText(text: myChats),
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
                  width: 300,
                ),
                const CustomSizedBox(
                  height: 10.0,
                ),
                const CustomText(
                  text: 'Hello Jane',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor,
                ),
                const CustomSizedBox(
                  height: 20.0,
                ),
                const CustomText(
                  text: welcomeMessage,
                  fontSize: 14,
                  color: kPaleGreen,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     CustomText(
                        text: searchGroup,
                        textDecoration: TextDecoration.underline,
                        color: kPaleGreen,
                        onClicked: (){
                          context.read<HomeBloc>().add(const HomeEventSearchGroup());
                        },
                      ),
                     const SizedBox(
                        width: 20.0,
                      ),
                      const CustomText(
                        text: '|',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kPaleGreen,
                      ),
                     const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: createGroup,
                        textDecoration: TextDecoration.underline,
                        color: kPaleGreen,
                        onClicked: (){
                          context.read<HomeBloc>().add(const HomeEventCreateGroup());
                      },
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
