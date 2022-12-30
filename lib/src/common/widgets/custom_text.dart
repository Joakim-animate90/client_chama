part of 'page.dart';


class CustomText extends StatelessWidget {

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final VoidCallback? onClicked;
  final TextDecoration? textDecoration;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textDecoration,
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
          decoration: textDecoration,
          color: color,
        ),
      ),
    );
  }
}
