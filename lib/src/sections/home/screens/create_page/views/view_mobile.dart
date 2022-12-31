part of 'page.dart';
class ViewMobileCreateGroup extends StatelessWidget {
  const ViewMobileCreateGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc , HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kSecondaryColor,
          appBar: AppBar(
            title: const CustomText(text: myChats),
             actions: [
               Flex(
                 direction: Axis.horizontal,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   CustomText(text: searchGroup,
                     fontSize: 14,
                     textDecoration: TextDecoration.underline,
                     color: kSecondaryColor, onClicked: (){
                     context.read<HomeBloc>().add(const HomeEventSearchGroup());
                   },),

                 ],
               ),
               

             ],
          ),
          drawer: const CustomDrawer(),
          // container at the center of the screen with text , then a text field and a button
          body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
                CustomSizedBox(height: 60.0,),
                CustomText(text: 'Lets Create Your Group', fontSize: 20, fontWeight: FontWeight.bold, color: kBlack,),
                CustomSizedBox(height: 20.0,),
                CreateGroupForm(),
          ]
        )
    )
        );
      }
    );
  }
}
