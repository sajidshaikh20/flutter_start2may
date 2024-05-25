
import 'exports.dart';

class WelcomeRow extends StatelessWidget {
  const WelcomeRow({super.key});

 // final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          Constants.welcomeTo,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ).copyWith(),
        ),
        const SizedBox(width: 10),
        Image.asset(
          "assets/images/ic_splash_logo.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}
