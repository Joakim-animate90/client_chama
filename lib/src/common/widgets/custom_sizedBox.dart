part of 'page.dart';

class CustomSizedBox extends StatelessWidget {
   final double height;
   const CustomSizedBox({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
