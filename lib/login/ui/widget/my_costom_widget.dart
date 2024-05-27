import '../../../utils/exports.dart';

class CustomTextWidget extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? opacity;

  const CustomTextWidget({
    super.key,
    required this.data,
    required this.fontSize,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w700,
    this.textAlign = TextAlign.start,
    this.opacity ,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity ?? 1.0,
      child: Text(
        data,
        style: GoogleFonts.inter(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
