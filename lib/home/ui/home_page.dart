import '../../../utils/exports.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var userList = [];

  @override
  Widget build(BuildContext context) {
    userData();
    return const Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CustomCardWidget()],
      ),
    ));
  }

  void userData() {
    userList.add(Userdata("sajiud", "sajid@gmail.com", 12));
    userList.add(Userdata("bhuru", "sajid@gmail.com", 13));
    userList.add(Userdata("khan", "bhuru@gmail.com", 14));
    userList.add(Userdata("madha", "sajid@gmail.com", 15));
    userList.add(Userdata("sajid", "sajid@gmail.com", 1));
  }
}
