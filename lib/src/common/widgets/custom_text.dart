part of 'page.dart';


class CustomText extends StatelessWidget {

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final VoidCallback? onClicked;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
