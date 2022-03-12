import 'package:flutter/material.dart';
import 'package:whats_app_clone/Screens/spalsh_screen.dart';
import 'Screens/login_screen.dart';
void main() {
  runApp(const IndividualPage());
}
class IndividualPage extends StatefulWidget {
  const IndividualPage ({Key? key}) : super(key: key);
  @override
  _IndividualPageState createState() => _IndividualPageState();
}
class _IndividualPageState extends State<IndividualPage>{

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
        home: Scaffold(body: SplashScreen()));}
}


