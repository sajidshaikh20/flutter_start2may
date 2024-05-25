import '../../../utils/exports.dart';

class CustomTextWidget extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const CustomTextWidget({
    super.key,
    required this.data,
    required this.fontSize,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w700,
    this.textAlign = TextAlign.start
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
