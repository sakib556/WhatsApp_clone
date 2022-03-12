import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Future<bool> _exitApp(BuildContext context) {
  //   return showDialog(
  //     context: context,
  //     builder: context=>AlertDialog(
  //       title: Text('Do you want to exit this application?'),
  //       content: Text('We hate to see you leave...'),
  //       actions: <Widget>[
  //         FlatButton(
  //           onPressed: () {
  //             print("you choose no");
  //             Navigator.of(context).pop(false);
  //           },
  //           child: Text('No'),
  //         ),
  //         FlatButton(
  //           onPressed: () {
  //             SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  //           },
  //           child: Text('Yes'),
  //         ),
  //       ],
  //     )
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    // _exitApp(context);
    return Container(
          color: Colors.yellow,

    );
  }
}

