import '../../utils/exports.dart';


class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {

  TextEditingController phoneController = TextEditingController();

  static final _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('Get Started'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Home',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.rootHome.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'User Listing',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.users.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Sign In',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.getStartedSignIn.name);
              },
            ),
          ),

        ],
      ),
    );
  }
}
