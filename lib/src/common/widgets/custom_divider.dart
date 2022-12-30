part of 'page.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kBlack,
      thickness: 0.1,
    );
  }
}
